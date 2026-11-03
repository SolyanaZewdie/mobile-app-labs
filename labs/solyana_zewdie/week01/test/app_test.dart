// This test passes once you finish Task 3 of the lab.
// Run it with: flutter test test/app_test.dart

import 'package:flutter_test/flutter_test.dart';

import 'package:campus_companion/app.dart';

void main() {
  testWidgets('Campus Companion displays welcome screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const CampusCompanionApp());

    expect(find.text('Campus Companion'), findsOneWidget);
    expect(find.text('Welcome to Campus Companion'), findsOneWidget);
  });
}
