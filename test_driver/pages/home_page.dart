import 'package:flutter_driver/flutter_driver.dart';

class HomePage
{
  final txtCounter = find.byValueKey('counterText');
  final btnFinder = find.byTooltip('Increment');
  final btnAdd = find.byValueKey('add');
  final btnSubtract = find.byValueKey('subtract');
  final txtAlert = find.byValueKey('alert_text');
  final btnClose = find.byValueKey('close_button');

  FlutterDriver _driver;

  HomePage(FlutterDriver driver){

    this._driver = driver;

}

Future<String> getCounterValue() async{
    return await _driver.getText(txtCounter);
}

  Future<void> addValue() async{
    await _driver.tap(btnFinder);
  }


}