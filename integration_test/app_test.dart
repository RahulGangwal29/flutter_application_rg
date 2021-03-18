import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_rg/configs/reusable_functions.dart';
import 'package:flutter_application_rg/testdatatypes/password_test.dart';
import 'package:flutter_application_rg/utils/object_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application_rg/main.dart' as app;


import '../lib/pages/rgang_test.dart';


void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Counter App', () {
    testWidgets(
      "First Integration Test",
          (WidgetTester tester) async {
        app.main();
        await tester.pumpAndSettle();


        //  await tester.pumpWidget(MyApp());


        // Verify that our counter starts at 0.
        expect(find.text('0'), findsOneWidget);
        expect(find.text('1'), findsNothing);
/*
        FirstTest firstTest = FirstTest();
        // Tap the '+' icon and trigger a frame.
       await tester.tap(firstTest.fab);

        await tester.pumpAndSettle();
*/
      //  click();
            FirstTest firstTest = FirstTest();
            await click(tester,firstTest.fab);
            await tester.pumpAndSettle();

        // Verify that our counter has incremented.
        expect(find.text('0'), findsNothing);
        expect(find.text('1'), findsOneWidget);


        await subtract(tester);
        await tester.pumpAndSettle();


        await addpassword(tester);
        await tester.pumpAndSettle();

      },
    );
  });
}

/**
Future<void> subtract(WidgetTester tester)
async {
  await tester.tap(find.text('Add'));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Close'));
  await tester.pumpAndSettle();

 // expect(find.text('0'), findsOneWidget);
 // expect(find.text('1'), findsNothing);

}
*/

Future<void> addpassword(WidgetTester tester)
async {

  Password _parseJsonForPassword(String jsonString) {
    Map decoded = jsonDecode(jsonString);

    return new Password(decoded['password']);

  }

  String jsonPassword = await rootBundle.loadString('assets/password.json');
  Password password =_parseJsonForPassword(jsonPassword);

  print(password.password);


  await tester.enterText(find.widgetWithText(TextField, 'Password'), password.password);
  await tester.pumpAndSettle();

}

