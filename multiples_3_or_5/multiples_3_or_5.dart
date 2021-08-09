import 'dart:core';

class Multiple{

  int sumOfMultiples(){
    int sum = 0;
    for(int i=1; i<1000; i++){
      if(i%3 == 0 || i%5 == 0){
        sum = sum + i;
      }
    }
    return sum;
  }
}

main(){
  var session1 = Multiple();
  print('The sum of multiples of 3 and 5 below 1000 = ${session1.sumOfMultiples()}');

}