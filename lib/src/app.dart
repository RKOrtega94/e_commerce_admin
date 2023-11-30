import 'package:e_commerce_admin/src/presentation/screens/_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce Admin',
      home: HomeScreen(),
      getPages: [],
    );
  }
}
