import 'dart:math';
import 'dart:io';

class JokesGame{
  String userInput;
  List<String> jokes = ['Joke1','Joke2','Joke3','Joke4','Joke5'];
  Random random;
  String computerGuess;

  JokesGame(){
    random = Random();
  }

  void runJokesGame(){
    print('Welcome To Jokes Program');
    print('We Have Some Jokes For U ');
    print('Please Enter Next To Show Our Jokes ');
  do{
    userInput = stdin.readLineSync();
    // if(userInput == 'Next'){
    //   computerGuess = jokes[random.nextInt(jokes.length)];
    //   print(computerGuess);
    // }

  switch(userInput) {
    case 'Next':
      computerGuess = jokes[random.nextInt(jokes.length)];
     print(computerGuess);
     break;
    default: ;
      break;
  }

  }
  while(userInput != 'exit');
  print('We Hoped U Have Been Enjoyed With Us');
  }

}















