import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? text;
  final Color? backgroundcolor;
  final IconData? icon;

  final CircleAvatar? avatar;
  final Radius? radius;

  const CustomAppBar({
    super.key,
    this.title,
    this.backgroundcolor,
    this.icon,
    this.avatar,
    this.text,
    this.radius,
  });
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const CircleAvatar(
          radius: 25,
          child: Text('Logo'),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.notification_important,
                size: 4.h,
              ),
              SizedBox(
                width: 3.w,
              ),
              Icon(
                Icons.person,
                size: 4.h,
              ),
            ],
          ),
        )
      ],
      backgroundColor: backgroundcolor,
      centerTitle: true,
    );
  }
}
