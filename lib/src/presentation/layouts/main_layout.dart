import 'package:flutter/material.dart';

class AppMainLayout extends StatelessWidget {
  final Widget child;
  const AppMainLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: child,
    );
  }
}
