import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/price_page.dart';

Future<void> main() async => testWidgets('Welcome Page Test', (WidgetTester tester) async {
    // Build your app tree first
    await tester.pumpWidget(const MaterialApp(home: PricePage()));
  });