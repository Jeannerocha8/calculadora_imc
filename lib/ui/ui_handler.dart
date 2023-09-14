import 'dart:convert';
import 'dart:io';

class UIHandler {
  String printAndGetInput(String message) {
    print(message);
    return stdin.readLineSync(encoding: utf8) ?? '';
  }
}
