import 'package:e_commerce_admin/src/presentation/router/_router.dart';
import 'package:e_commerce_admin/src/presentation/screens/_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce Admin',
      home: const HomeScreen(),
      getPages: pages,
    );
  }
}
