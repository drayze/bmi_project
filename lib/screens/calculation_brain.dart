class CalculationBrain {
  CalculationBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;

  String CalculateBMI() {
    _bmi = weight / (height * height) * 703;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30.0) {
      return 'Obese';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Average';
    } else {
      return 'Underweight';
    }
  }

  String giveFeedback() {
    if (_bmi >= 30.0) {
      return 'I hope you don\'t use this as an excuse.';
    } else if (_bmi >= 25.0 && _bmi <= 29.9) {
      return 'So you\'re THICK. That\'s okay.';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'I bet you don\'t have trouble finding clothes that fit.';
    } else {
      return 'Please, go eat a double cheeseburger and a large order of fries.';
    }
  }
}
