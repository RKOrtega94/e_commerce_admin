import 'package:e_commerce_admin/src/presentation/screens/home/sections/filter_section.dart';
import 'package:e_commerce_admin/src/presentation/screens/home/sections/graphic_section.dart';
import 'package:e_commerce_admin/src/presentation/screens/home/sections/sel_section.dart';
import 'package:e_commerce_admin/src/presentation/widgets/_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String get routeName => '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Row(
          children: [
            Icon(CupertinoIcons.chart_pie_fill),
            SizedBox(width: 10),
            Text('Dashboard'),
          ],
        ),
      ),
      drawer: const DrawerWidget(),
      body: const Column(
        children: [
          FilterSection(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  GraphicSection(),
                  SizedBox(height: 10),
                  SelSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
