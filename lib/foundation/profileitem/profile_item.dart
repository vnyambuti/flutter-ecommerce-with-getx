import 'package:ecom1/foundation/sp_icons/sp_icon.dart';
import 'package:ecom1/foundation/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {Key? key,
      required this.title,
      this.subtitle,
      required this.assetname,
      required this.isLast,
      this.onTap,
      this.isSelected})
      : super(key: key);
  final String title;
  final String? subtitle;
  final String assetname;
  final bool isLast;
  final bool? isSelected;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 60,
            child: ListTile(
              leading: SpIcon(assetname: assetname),
              title: Text(title, style: Theme.of(context).textTheme.bodyText1),
              subtitle: subtitle != null
                  ? Text("All Orders",
                      style: Theme.of(context).textTheme.caption)
                  : null,
              trailing: InkWell(
                onTap: () => {},
                child: Icon(
                  Icons.chevron_right,
                  size: 16,
                ),
              ),
            ),
          ),
          isLast ? Container() : Divider()
        ],
      ),
    );
  }
}
