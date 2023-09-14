import 'package:calculadora_imc/models/person.dart';

class CalculateIMC {
  String calculate(Person person) {
    double imc = (person.weight / (person.height * person.height));

    imc = double.parse(imc.toStringAsFixed(1));

    if (imc < 16) {
      return 'Result: $imc - severe thinness';
    } else if (imc >= 16 && imc < 17) {
      return 'Result: $imc - moderate thinness';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Result: $imc - light thinness';
    } else if (imc >= 18.5 && imc < 25) {
      return 'Result: $imc - healthy';
    } else if (imc >= 25 && imc < 30) {
      return 'Result: $imc - overweight';
    } else if (imc >= 30 && imc < 35) {
      return 'Result: $imc - grade I obesity';
    } else if (imc >= 35 && imc < 40) {
      return 'Result: $imc - grade II obesity';
    } else if (imc > 40) {
      return 'Result: $imc - grade III obesity';
    }

    return 'error';
  }
}
