import 'dart:math';

class CalculationBrain {
  CalculationBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String CalculateBMI() {
    double _bmi = weight / pow(height / 12, 2);
    return _bmi.toStringAsExponential(1);
  }

  String getResult() {
    if (_bmi >= 20) {
      return 'Overwieght';
    } else if (_bmi > 18.5) {
      return 'Average';
    } else {
      return 'Underweight';
    }
  }

  String giveFeedback() {
    if (_bmi >= 20) {
      return 'So you\'re THICK. That\'s okay.';
    } else if (_bmi > 18.5) {
      return 'I bet you don\'t have trouble finding clothes that fit.';
    } else {
      return 'Please, go eat a double cheeseburger and a large order of fries.';
    }
  }
}
