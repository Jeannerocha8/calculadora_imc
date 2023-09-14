import 'dart:convert';

import 'dart:io';

import 'package:calculadora_imc/calculate_imc.dart';
import 'package:calculadora_imc/models/person.dart';
import 'package:calculadora_imc/ui/ui_handler.dart';

void main(List<String> arguments) {
  var interface = UIHandler();

  String name;
  double? weight;
  double? height;

  try {
    name = interface.printAndGetInput('Enter your name');

    weight = double.tryParse(
        interface.printAndGetInput('Enter your body weight in kilograms'));

    height = double.tryParse(
        interface.printAndGetInput('Enter your height in meterst'));

    if (weight == null || height == null || name.isEmpty) {
      throw FormatException('One or more inputs are not valid');
    }

    if (weight is int || height is int) {
      throw FormatException(
          'weight or height with invalid format, please enter weight in'
          ' kilograms and height in meters');
    }

    var person = Person(name, weight, height);

    var imc = CalculateIMC().calculate(person);
    print(imc);
  } catch (excecao) {
    print('${excecao.toString()}. Please, enter the data again.');

    main(arguments);
    return;
  }
}
