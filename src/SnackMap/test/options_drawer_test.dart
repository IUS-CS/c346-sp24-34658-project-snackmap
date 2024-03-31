import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('OptionsDrawer exist and opens', (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    //It is called this in home_page.dart
    const displayName = "Open menu";

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          key: scaffoldKey,
          drawer: const Text(displayName),
        ),
      ),
    );

    scaffoldKey.currentState?.openDrawer();
    await tester.pump();

    expect(find.text(displayName), findsOneWidget);

  });
}