import 'dart:convert';
import 'package:flutter/services.dart';

abstract class MockUtils {
  static Future getMock(String mockFile) =>
      _parseFileToJson('assets/json/$mockFile.json');

  static dynamic _parseFileToJson(String path) async {
    final string = await rootBundle.loadString(path);
    return json.decode(string);
  }
}
