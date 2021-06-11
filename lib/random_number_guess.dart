  import 'dart:math';
import 'dart:io';

  void runProgramOfCompare()
  {
    int random = randomNumber();
    int userInput;
      do{
        userInput = askUserInput();
        Map<bool,String> results = compareAnswer(random, userInput);
        print(results);
      }
      while( random != userInput);

   }


int randomNumber()  // داله خاصه انها تنشئ رقم عشوائي
{
  Random random = Random();
  return random.nextInt(5);
}

int askUserInput()  // داله بتطلب من المستخدم انه يدخل رقم ف الكونسول
{
  print("Hello In Our Game");
  print("Please Enter Ur Number : ");
  String guess = stdin.readLineSync();
  return int.parse(guess);
}
//داله بتقارن بين رقم الكومبيوتر ورقم الستخدم
  Map<bool ,String> compareAnswer (int computerNumber , int userNumber)
{
  if(computerNumber > userNumber)  // لو رقم الكومبيوتر اعلي
      {
    return{false:"Too High"};  // هتقولي انتا دخلت رقم صغير
  }

  else if(computerNumber < userNumber) //لو رقم الكومبيوتر اصغر
      {
    return{false:"Too low"}; //هتقولي انتا دخلت رقم كبير
  }

  else
  {
    return{true:"You Got it"};
  }
}
