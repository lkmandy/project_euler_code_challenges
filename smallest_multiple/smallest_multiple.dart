int smallestMultiple() {
  // 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  int smallestFactor = 2520;
  bool found = false;

  while (!found) {
    // The samllest factor will be a multiple of 2520
    smallestFactor += 2520;
    bool isDividable = true;

    // The numbers 1 - 10 are not needed in the for loop -- The numbers 11-20 are divisible by the same numbers as 1-10.
    // So we start at 11 and end at 20 in the for loop statement.
    for (int numberRange = 11; numberRange <= 20; numberRange++) {
      if (smallestFactor % numberRange != 0) {
        isDividable = false;
        break;
      }
    }
    if (isDividable) {
      found = true;
    }
  }
  return smallestFactor;
}

main() {
  print(smallestMultiple());
}
