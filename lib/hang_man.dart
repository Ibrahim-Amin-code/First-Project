import 'dart:io';
import 'dart:math';

class HangMan{
    Random random;
    String userInput;
    String computerGuess;
    List<String> computerOptions = ['Save','Hurry','Rope','Focus','Friend','Please','Help'];
    int lives = 5;

 HangMan(){
      random = Random();
    }

    void runHangManGame()
    {
    print('Weclome To HangMan Game..');
    print('Enter The Right Word To Save Your Friend');
    print('You Have To Choice One Word Of Those Words $computerOptions To Save Your Friend ' );
    print('Good Luck');
    do {
          userInput = stdin.readLineSync();
          computerGuess = computerOptions[random.nextInt(computerOptions.length)];
          print('Your Friend Entered $computerGuess Word');
          if(userInput != computerGuess ){
          print('You Entered Wrong Word Please Try Again And Focus');
          lives = lives-1;
          print('You Have $lives Lives Left Focus');
          if( lives == 0){
            print('Your Friend is Dead ');
          }
          }else{
          print('Congratulations You Saved Your Friend');
          }
          }while(userInput != 'exit');
          print('Thank u');

    }
}
