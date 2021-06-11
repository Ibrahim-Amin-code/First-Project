import 'dart:io';
import 'dart:math';

class CodingGame {

  List<int> computerGuess;
  List<int> userGuess;
  Random random;
  int lives = 5;
  String number;

  CodingGame() {
    computerGuess = List<int>();
    userGuess = List<int>();
    random = Random();
    generateComputerNumbers();
  }
  //comment
  void runGame(){
    do{
      int computerIndex;
      int userIndex;
      _askUserForInput();
      for(int i in computerGuess){
        for(int k in userGuess) {
          if (k == i){
            computerIndex = computerGuess.indexOf(i);
            userIndex = userGuess.indexOf(k);

            if(computerIndex == userIndex) {
              print('Sequence ${computerIndex+1} Was Right ');
            }else{
              print('Wrong Guess');
            }
          }
        }
      }
    }
    while(number != 'exit');
    print('finish');
  }



  void generateComputerNumbers() {
    int count = 4;
    for (int i = 0; i < count; i++) {
      int rndInt = random.nextInt(9);
      if (!computerGuess.contains(rndInt)) {
        computerGuess.add(rndInt);
        print(computerGuess.toString());
      } else {
        count++;
      }
    }
  }

    void _askUserForInput(){
     userGuess.clear();
      print('Welcome To Our Game:..');
        int counter = 4;
      for(int i = 0; i < counter; i++){
        number = stdin.readLineSync();
        if(int.tryParse(number) == null){
        print('Wrong Input Value Please Enter In Integer Format');
        counter++;
        }else{
         int finalNumber = int.parse(number);
          if(userGuess.contains(finalNumber)){
            print('Enter Unique Number');
            number = stdin.readLineSync();
            counter++;
          }else{
            userGuess.add(finalNumber);
            }
          }
        }
      }










  //
  // List<int> computerNumbers;
  // List<int> userGuess;
  // Random random;
  // int tries = 12;
  //
  // Coding_game() {
  //   random = Random();
  //   computerNumbers = List<int>();
  //   userGuess = List<int>();
  //   _generateComputerNumbers();
  // }
  // void _generateComputerNumbers() {
  //   int count = 4;
  //   for (int i = 0; i < count; i++) {
  //     int rndInt = random.nextInt(9);
  //     if (!computerNumbers.contains(rndInt)) {
  //       computerNumbers.add(rndInt);
  //     } else {
  //       count++;
  //     }
  //   }
  // }

  // void _askUserForInput() {
  //   userGuess.clear();
  //   int counter = 4;
  //   String number;
  //   print('Welcome To Our Game');
  //   for (int i = 0; i < counter; i++) {
  //     number = stdin.readLineSync();
  //     if (int.tryParse(number) == null) {
  //       print('Wrong Input Value Please Enter In Integer Format');
  //       number = stdin.readLineSync();
  //       counter++;
  //     } else {
  //       int finalNumber = int.parse(number);
  //       if (userGuess.contains(finalNumber)) {
  //         print('Please Enter Unique Number Only');
  //         number = stdin.readLineSync();
  //         counter++;
  //       } else {
  //         userGuess.add(finalNumber);
  //       }
  //     }
  //    }
  //   for (int i in userGuess) {
  //     print(i);
  //   }
  // }
  //
  // void runGame() {
  //   int counterCorrect = 0;
  //   do{
  //     _askUserForInput();
  //     tries--;
  //     print('Y Have $tries try');
  //     for (int i in computerNumbers) {
  //       for (int k in userGuess) {
  //         if (k == i) {
  //           int computerIndex = computerNumbers.indexOf(i);
  //           int userIndex = userGuess.indexOf(k);
  //           if (computerIndex == userIndex) {
  //             print('Sequence ${computerIndex+1} Was Right ');
  //             counterCorrect++;
  //           } else{
  //             print('Wrong Guess');
  //             _askUserForInput();
  //             tries--;
  //             print('Y Have $tries try');
  //           }
  //         }
  //       }
  //     }
  //     if(counterCorrect == 4){
  //       break;
  //     }
  //   } while(tries!= 0);
  //   print('You Won');
  // }
}
