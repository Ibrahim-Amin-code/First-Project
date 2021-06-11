import 'dart:math';
import 'dart:io';

computerGuessAndUserGuessGame() {
  Random random = Random();
  int computerGuess = random.nextInt(10);
  int userGuess;
  print("Welcome To Our Game :");
  print("Enter Ur Number  :");

  do {
    userGuess = int.parse(stdin.readLineSync());
    if (userGuess > computerGuess) {
      print("To High");
    } else if (userGuess < computerGuess) {
      print("To low");
    } else {
      print("Yes u got it");
    }
  } while (userGuess != 'exit');
  print('Thank U');
}
