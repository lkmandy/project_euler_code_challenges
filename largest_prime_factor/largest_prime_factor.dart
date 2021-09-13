import 'dart:math';
import 'package:ninja_prime/ninja_prime.dart';

int largestPrimeFactor(int n) {

  int maxPrime = -1;

  // Print the number of 2s that divide n
  while (n % 2 == 0) {
    maxPrime = 2;
    n ~/= n / 2;
  }

  // n must be odd at this point
  while (n % 3 == 0) {
    maxPrime = 3;
    n ~/= 3;
  }

  // now we have to iterate only for integers
  // who do not have prime factors 2 and 3
  for (int i = 5; i <= sqrt(n); i += 6) {
    while (n % i == 0) {
      maxPrime = i;
      n ~/= i;
    }
    while (n % (i + 2) == 0) {
      maxPrime = i + 2;
      n ~/= i + 2;
    }
  }

  // This condition is to handle the case
  // when n is a prime number greater than 4
  if (n > 4) maxPrime = n;

  return maxPrime;
}

main() {
  int number = 600851475143;
  print(largestPrimeFactor(number));
}
