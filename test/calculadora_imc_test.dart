import 'package:calculadora_imc/calculate_imc.dart';
import 'package:calculadora_imc/models/person.dart';
import 'package:test/test.dart';

void main() {
  test('severe thinness', () {
    var person = Person('Teste', 40.0, 1.65);
    expect(CalculateIMC().calculate(person), 'Result: 14.7 - severe thinness');
  });

  test('moderate thinness', () {
    var person = Person('Teste', 45.0, 1.65);
    expect(
        CalculateIMC().calculate(person), 'Result: 16.5 - moderate thinness');
  });

  test('moderate healthy', () {
    var person = Person('Teste', 55.0, 1.65);
    expect(CalculateIMC().calculate(person), 'Result: 20.2 - healthy');
  });

  test('light thinness', () {
    var person = Person('Teste', 50.0, 1.65);
    expect(CalculateIMC().calculate(person), 'Result: 18.4 - light thinness');
  });

  test('healthy', () {
    var person = Person('Teste', 55.0, 1.65);
    expect(CalculateIMC().calculate(person), 'Result: 20.2 - healthy');
  });

  test('overweight', () {
    var person = Person('Teste', 70.0, 1.65);
    expect(CalculateIMC().calculate(person), 'Result: 25.7 - overweight');
  });

  test('grade I obesity', () {
    var person = Person('Teste', 90.0, 1.65);
    expect(CalculateIMC().calculate(person), 'Result: 33.1 - grade I obesity');
  });

  test('grade II obesity', () {
    var person = Person('Teste', 100.0, 1.65);
    expect(CalculateIMC().calculate(person), 'Result: 36.7 - grade II obesity');
  });

  test('grade III obesity', () {
    var person = Person('Teste', 110.0, 1.65);
    expect(
        CalculateIMC().calculate(person), 'Result: 40.4 - grade III obesity');
  });
}
