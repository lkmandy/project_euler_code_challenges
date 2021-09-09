void main() {
  for (int i = 99; i > -1; i--) {
    
    int init = 99;
    
    String s1 = 's';
    String s2 = 's';
    
    dynamic value=i-1;
    
     if(i==0){
      print('No more bottles of beer on the wall, no more bottles of beer.\n'
            'Go to the store and buy some more, $init bottles of beer on the wall.\n\n');
    }else{
       
     
    
    if(i==2){
      s2='';
    }
    
    if(i==1){
      s1='';
      value = 'no more';
    }
   
    print('\n$i bottle$s1 of beer on the wall, $i bottle$s1 of beer.\n'
           'Take one down and pass it around, $value bottle$s2 of beer'
           ' on the wall.\n\n');
    
     }
  }
}

