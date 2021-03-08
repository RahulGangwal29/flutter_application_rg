import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/home_page.dart';

class InitialState extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);

    expectMatch(await homePage.getCounterValue(), "0");
  }

  @override
  RegExp get pattern => RegExp(r"I test the initial state of the app");

}

class ConditionState extends WhenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);

   homePage.addValue();

  }

  @override
  RegExp get pattern => RegExp(r"I click the plus button");

}

class AssertState extends ThenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);

    expectMatch(await homePage.getCounterValue(), "1");
  }

  @override
  RegExp get pattern => RegExp(r"I see if the value is now 1");

}
