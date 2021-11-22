import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:flutter_application_rg/testdatatypes/password_test.dart';

Future<String> _loadPasswordAsset() async {
  return await rootBundle.loadString('assets/password.json');
  
}

Password _parseJsonForPassword(String jsonString) {
  Map decoded = jsonDecode(jsonString);

//  String password = decoded['password'];

//  print(password);

return new Password(decoded['password']);

}

Future loadPassword() async {
  String jsonPassword = await _loadPasswordAsset();
  Password password =_parseJsonForPassword(jsonPassword);

  print(password.password);

}


