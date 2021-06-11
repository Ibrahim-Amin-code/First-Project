import 'dart:io';
import 'dart:math';

class Game {
  List<int> computerNumbers;
  List<int> userGuess;
  Random random;
  Game() {
    random = Random();
    computerNumbers = List<int>();
    userGuess = List<int>();
    _generateComputerNumbers();
  }
  void _generateComputerNumbers() {
    int count = 4;
    for (int i = 0; i < count; i++) {
      int rndInt = random.nextInt(9);
      if (!computerNumbers.contains(rndInt)) {
        computerNumbers.add(rndInt);
      } else {
        count++;
      }
    }
  }

  void _askUserForInput() {
    print('Enter Your Guess 4 Numbers ');
    String number;
    int count = 4;
    for (int i = 0; i < count; i++) {
      number = stdin.readLineSync();
      //print(count);
      if (int.tryParse(number) == null) {
        print('Wrong Input Value');
        number = stdin.readLineSync();
        count++;
      } else {
        int finalNumber = int.parse(number);
        if (userGuess.contains(finalNumber)) {
          print('Please Enter Unique Numbers Only');
          number = stdin.readLineSync();
          count++;
        }
        userGuess.add(finalNumber);
      }
    }
    for (int i in userGuess) {
      print(i);
    }
  }

  void runGame() {
    print(computerNumbers);
    _askUserForInput();
    for(int i in computerNumbers){
      for(int k in userGuess){
        if(k==i){
          int computerIndex = computerNumbers.indexOf(i);
          int userIndex = userGuess.indexOf(k);
          print('Your Number in Your index $userIndex Was Correct With The Computer index $computerIndex  ');
        }else{
          print('wrong Index');
        }
      }
    }


  }
}
