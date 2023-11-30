import 'package:e_commerce_admin/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Test init app main.dart", (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(),
    );

    expect(find.byType(App), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(Navigator), findsOneWidget);
  });
}
