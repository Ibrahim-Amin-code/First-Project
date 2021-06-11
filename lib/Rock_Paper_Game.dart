import 'dart:math';
import 'dart:io';

class RockPaper {
  Random random;
  List<String> options = ['Rock', 'Paper', 'Scissors'];
  String userInput;
  String computerGuess;
  RockPaper() {
    random = Random();
  }

  void runRockGame() {
    print('Welcome To Our Game');
    print("Enter Ur Choise ");
    do {
      userInput = stdin.readLineSync();
      computerGuess = options[random.nextInt(options.length)];
      print("Copmuter Entered $computerGuess");
      if (userInput == computerGuess) {
        print('Tie');
      } else if (userInput == "Rock" && computerGuess == 'Scissors') {
        print('You Won');
      } else if (userInput == 'Scissors' && computerGuess == 'Paper') {
        print("You Won");
      } else if (userInput == 'Paper' && computerGuess == 'Rock') {
        print("You Won");
      } else {
        print("Computer Wins");
      }
    } while (userInput != 'exit');
    print('Thank u');
  }
}











// class RockPaperScissors
//     {
//       Random random;
//       List<String> options = ['Rock','Paper','Scissors'];
//       String userInput;
//       String conputerGuess;
//
//
//       RockPaperScissors(){
//         random = Random();
//       }
//
//
//       void runRockGame() {
//         print("Welcome To Our Rock Game ");
//         print("Enter Your Option : ");
//         do {
//           userInput = stdin.readLineSync();
//           conputerGuess = options[random.nextInt(options.length)];
//          //
//           print("Computer Guessed $conputerGuess");
//
//           if (userInput == conputerGuess)
//           {
//             print("Tie");
//           }
//           else if(conputerGuess == "Paper" && userInput == "Rock")
//           {
//               print("Computer Wins");
//           }
//           else if(conputerGuess == "Rock" && userInput =="Scissors")
//           {
//               print("Computer Wins");
//           }
//           else if(conputerGuess == "Scissors" && userInput =="Paper")
//           {
//             print("Computer Wins");
//           }
//           else
//           {
//             print("You Wins");
//           }
//
//         } while(userInput != "exit");
//           print("Thank You To Playing With Us ");
//         }
//     }
