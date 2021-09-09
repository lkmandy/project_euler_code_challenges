List<int> winningNumbers = [12, 6, 34, 22, 41, 9];

void main() {
  List<int> ticket1 = [45, 22, 34, 9, 8, 6, 33];

  checkNumbers(ticket1);
}

void checkNumbers(List<int> myNumbers) {
  int matches = 0;
  //Write your code here.
  for (int number in myNumbers) {
    for (int winValue in winningNumbers) {
      if (winValue == number) {
        matches++;
      }
    }
  }
  print('You have $matches matches!');
}
