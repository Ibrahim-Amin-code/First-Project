

import 'dart:io';

class CalculateAgeGame{
  String userInput;

  int getYearOfBirth(){
    print('Please Enter Your Year Of Birth');
    return int.parse(stdin.readLineSync());
  }

  int getMonthOfBirth(){
    print('Please Enter Your Month Of Birth');
    return int.parse(stdin.readLineSync());
  }

  int getDayOfBirth() {
    print('Please Enter Your Day Of Birth');
    return int.parse(stdin.readLineSync());
  }

  void calculateAge() {
    do {
//        yearOfBirth = getYearOfBirth();
//        monthOfBirth = getMonthOfBirth();
//        dayOfBirth = getDayOfBirth();
      print('Welcome To Our Program..');
      var dateFrom = DateTime.utc(getYearOfBirth(), getMonthOfBirth(), getDayOfBirth());
      var dateTo = DateTime.now().toUtc();
      int difference = dateTo.difference(dateFrom).inDays;
      int ageInDays = difference;
      double ageInYears = difference / 365;
      int finalAgeInYears = ageInYears.toInt();
      print('You Have Lived $finalAgeInYears Years And $ageInDays Dayes');
     // userInput = stdin.readLineSync();

    }
    while(userInput != 'exit');
    print('Thank U');
  }
}




//
// int getYearOfBirth()
// {
//   print("Enter Your Date Of Year Please :");
//   return int.parse(stdin.readLineSync());
// }
// int getMonthOfBirth()
// {
//   print("Enter Your Date Of Month Please :");
//   return int.parse(stdin.readLineSync());
// }
// int getDayOfBirth()
// {
//   print("Enter Your Date Of Day Please :");
//   return int.parse(stdin.readLineSync());
// }
//
// void calculateTheAge()
// {
//   print("Welcome TO Our Program :");
//   // int year = getYearOfBirth();
//   // int month = getMonthOfBirth();  variables دي جوه functions   حل اخر ممكن احط ال
//   // int day = getDayOfBirth();
//
//                               // int year      // int month      // int day
//   var dateFrom = DateTime.utc(getYearOfBirth(),getMonthOfBirth(),getDayOfBirth());
//   var dateTo = DateTime.now().toUtc();
//   var difference = dateTo.difference(dateFrom).inDays;
//   print("You Have Lived $difference days!!!");
//   print("Thank You For Useing Our Program");
//
//
//         int getYearOfBirth(){
//         print("Enter Your Year Of Birth Please :");
//         return int.parse(stdin.readLineSync());
//         }
//
//
//         int getmonthOfBirth(){
//           print("Enter Your month Of Birth Please :");
//           return int.parse(stdin.readLineSync());
//         }
//
//         int getDayOfBirth(){
//           print("Enter Your Day Of Birth Please :");
//           return int.parse(stdin.readLineSync());
//         }
//
//
//       void calcuAge()
//       {
//         print("Welcome To Our Tool :");
//             var dateFrom = DateTime.utc(getYearOfBirth(),getmonthOfBirth(),getDayOfBirth());
//             var dateTo = DateTime.now().toUtc();
//             int difference = dateTo.difference(dateFrom).inDays;
//             double ageInDays = difference / 365;
//              int ageInYears = ageInDays.toInt();
//            // print("You Have Lived $difference Days");
//            // print("You Have Lived $age years");
//             print("You Have Lived $ageInYears years And $difference Days");
//             print("Thank U To Useing Our Tool");
//       }










