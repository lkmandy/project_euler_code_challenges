import 'dart:math';
import 'package:ninja_prime/ninja_prime.dart';

largestPrimeFactor() {
  const int number = 600851475143;
  List<int> factorSet = [];
  int maxPrimeNumber=0;

  for (int i = 2; i < number; i++) {
    if (number % i == 0 && i.isPrime()) {
      factorSet.add(i);
    }
  }
  maxPrimeNumber = factorSet.reduce(max);

}

main() {
  largestPrimeFactor();
}
