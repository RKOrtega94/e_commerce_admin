import 'package:e_commerce_admin/src/data/models/menu_model.dart';
import 'package:e_commerce_admin/src/presentation/screens/_screens.dart';
import 'package:flutter/cupertino.dart';

List<MenuModel> drawerMenuItems = <MenuModel>[
  MenuModel(
    title: 'Home',
    route: HomeScreen.routeName,
    icon: CupertinoIcons.home,
  ),
  MenuModel(
    title: 'Products',
    route: ProductScreen.routeName,
    icon: CupertinoIcons.cube_box,
  ),
  MenuModel(
    title: 'Categories',
    route: CategoryFormScreen.routeName,
    icon: CupertinoIcons.list_bullet,
  ),
];
