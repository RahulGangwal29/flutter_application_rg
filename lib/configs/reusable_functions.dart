import 'package:flutter_application_rg/pages/rgang_test.dart';
import 'package:flutter_application_rg/utils/object_repository.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> subtract(WidgetTester tester)
async {
  await tester.tap(find.text('Add'));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Close'));
  await tester.pumpAndSettle();

  // expect(find.text('0'), findsOneWidget);
  // expect(find.text('1'), findsNothing);

}

Future<void> click(WidgetTester tester,Finder finder)
async {
 // FirstTest firstTest = FirstTest();
  // Tap the '+' icon and trigger a frame.
  await tester.tap(finder);

  await tester.pumpAndSettle();

}




