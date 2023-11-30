import 'package:flutter/material.dart';

class AppDrawerMenuItem extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final IconData iconData;
  const AppDrawerMenuItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        leading: Icon(iconData),
      ),
    );
  }
}
