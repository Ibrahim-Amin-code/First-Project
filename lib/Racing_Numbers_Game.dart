import 'dart:math';
import 'dart:io';

class RacingNumbersGame {
  Random _random;
  int _computerChoice;
  int _userChoice;
  // String _option;

  RacingNumbersGame() {
    _random = Random();
  }

  void displayWelcomeMessage() {
    print('Welcome To Our Game ');
    print('Enter Ur Choice ...');
  }

  int getUserInput() {
    return int.parse(stdin.readLineSync());
  }

  void runGame() {
    int racingNumber = _random.nextInt(3);
    do {
      displayWelcomeMessage();
      print('Racing Number $racingNumber');
      _userChoice = getUserInput();
      _computerChoice = _random.nextInt(3);
      print('Computer Number $_computerChoice');
      if (_userChoice > racingNumber) {
        print('You Enter Too High');
      }
      if (_userChoice < racingNumber) {
        print('You Enter Too Low');
      }
      //=================================//

      if (_computerChoice > racingNumber) {
        print('Computer Choice Too High');
      }
      if (_computerChoice < racingNumber) {
        print('Computer Choice Too Low');
      }

      if (_userChoice == racingNumber) {
        print('You Won');
      }

      if (_computerChoice == racingNumber) {
        print('Computer Wins');
      }

      if (_userChoice == racingNumber && _computerChoice == racingNumber) {
        print('You Both won');
      }
    } while (_userChoice != 'exit');
    print('Thank U For Using Our Game');
  }
}
