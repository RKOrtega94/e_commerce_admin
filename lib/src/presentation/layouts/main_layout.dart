import 'package:flutter/material.dart';

class AppMainLayout extends StatelessWidget {
  final Widget child;
  final bool showAppBar;
  const AppMainLayout({
    super.key,
    required this.child,
    this.showAppBar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: showAppBar
          ? AppBar(
              title: const Text('Admin E-Commerce'),
            )
          : null,
      body: child,
    );
  }
}
