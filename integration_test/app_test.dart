import 'package:flutter/material.dart';
import 'package:flutter_application_rg/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main()
{
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
      "First Integration Test",
      (WidgetTester tester) async {

        await tester.pumpWidget(MyApp());

        // Verify that our counter starts at 0.
        expect(find.text('0'), findsOneWidget);
        expect(find.text('1'), findsNothing);

        // Tap the '+' icon and trigger a frame.
        await tester.tap(find.byIcon(Icons.add));
        await tester.pumpAndSettle();

        // Verify that our counter has incremented.
        expect(find.text('0'), findsNothing);
        expect(find.text('1'), findsOneWidget);
      },
  );
}