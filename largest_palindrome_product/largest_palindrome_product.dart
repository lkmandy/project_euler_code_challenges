import 'dart:math';

bool isPalindrome(int number) {
  return number.toString() == number.toString().split('').reversed.join('');
}

largestThreeDigitPalindromeProduct() {
  int palindromeProduct;
  int palindromeProductResult;
  List<int> palindromeProductList = [];
  int i, j;

  for (i = 100; i < 999; i++) {
    for (j = 100; j < 999; j++) {
      palindromeProduct = i * j;
      palindromeProductResult = palindromeProduct;
      isPalindrome(palindromeProductResult)
          ? palindromeProductList.add(palindromeProductResult)
          : false;
    }
  }

  print(
      'The Largest Three-Digit Palindrome Product is: ${palindromeProductList.reduce(max)}');
}

main() {
  largestThreeDigitPalindromeProduct();
}
