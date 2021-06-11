

import 'dart:io';

void main() {
  print('Enter Ur Number :');
  String userInput;
  int userNumber;

  do{
    userInput = stdin.readLineSync();
    userNumber = int.parse(userInput);



  }
  while( userNumber != 'exit');




  //
  // for (int i = 0; i < 10; i++) {
  //   userInput = stdin.readLineSync();
  //   userNumber = double.tryParse(userInput);
  //   print(userNumber);
    //   if(userNumber == null)
    //   {
    //     print('Wrong Value Please Try Again ');
    //   }
    //   else
    //   {
    //     print("You Have Entered $userNumber");
    //   }
    // }

  //}
}
