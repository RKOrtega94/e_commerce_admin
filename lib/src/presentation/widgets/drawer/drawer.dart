import 'package:e_commerce_admin/src/data/static/dawer_menu.dart';
import 'package:e_commerce_admin/src/presentation/widgets/drawer/drawer_menu_item.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 20,
          ),
          ...[
            ...List.generate(
              drawerMenuItems.length,
              (index) => AppDrawerMenuItem(
                onTap: () {},
                title: drawerMenuItems[index].title,
                iconData: drawerMenuItems[index].icon,
              ),
            ),
          ],
          const Spacer(),
          AppDrawerMenuItem(
            onTap: () {},
            title: 'Logout',
            iconData: Icons.logout,
          ),
          const Text('Version 1.0.0'),
        ],
      ),
    );
  }
}
