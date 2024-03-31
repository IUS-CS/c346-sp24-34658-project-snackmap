import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/price_page.dart';

void main() {
  group('PricePage widget tests', () {
    testWidgets('PricePage displays', (WidgetTester tester) async {
      //Open page
      await tester.pumpWidget(MaterialApp(home: PricePage()));

      //Find appbar
      final appBarFinder = find.byType(AppBar);

      
       expect(appBarFinder, findsOneWidget);

  });
});
}
