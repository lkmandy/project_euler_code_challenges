/// By considering the terms in the Fibonacci sequence whose values do not exceed four million,
/// find the sum of the even-valued terms.
///
class EvenFibonacci {
  int _termOne = 1;
  int _termTwo = 2;
  int _sumOfFib = 2;
  int _tempSum = 0;
  static const int _limit = 4000000;

  int sum() {
    while ((_termOne + _termTwo) < _limit) {
      _tempSum = _termOne + _termTwo;
      _termOne = _termTwo;
      _termTwo = _tempSum;
      if (_tempSum % 2 == 0) {
        _sumOfFib += _tempSum;
      }
    }
    return _sumOfFib;
  }
}

main() {
  EvenFibonacci demoOne = EvenFibonacci();
  print(demoOne.sum());
}
