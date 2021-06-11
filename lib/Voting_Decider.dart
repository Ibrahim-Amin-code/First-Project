

class VoteDecider {
  DateTime dateOfBirth;
  VoteDecider(DateTime dob) {
    dateOfBirth = dob;
  }
  bool isAllowedToVote() {
    DateTime today = DateTime.now();
    double differance = today.difference(dateOfBirth).inDays / 365;
    int age = differance.toInt();
    print(age);
        if(age >= 20)
    {
      print("Yes U Can Vote");
      return true;
    }else{
      print("No U Can Not Vote");
      return false;
    }
  }
}





// class VotingDecider
// {
//   DateTime dateOfBirth;
//   //int age;
//
//   VotingDecider(DateTime dob){
//     dateOfBirth = dob;
//
//   }

// void displayAge()
// {
//
//   print("Your Age Is $age");
// }

//   bool isAllowedToVote()
//   {
//
//     DateTime today = DateTime.now();
//     double dif = today.difference(dateOfBirth).inDays / 365;
//     // print(dif);
//     int age = dif.toInt();
//     print("Your Age Is $age");
//     if(age >= 20)
//     {
//       return true;
//       //print("Yes U Can Vote");
//     }
//       //print("No U Can Not Vote");
//       return false;
//     }
// }

//main(){
//
// VotingDecider votingDecider = VotingDecider(DateTime(1995));
// votingDecider.displayAge();
//
// if( votingDecider.isAllowedToVote())
// {
// print("User Can Vote");
// }
// {
// print("User Can Not Vote");
//}
//}
