import 'dart:math';

void singleDoubleNumbers()
{
  Random random = Random();
  List<int> myList = [];

  for (int i = 0; i < 20; i++) {
    int myInt = random.nextInt(20);
    myList.add(myInt);
  }
  for (int e in myList) {
    if (e % 2 == 0) {
      print("$e is single");
    } else {
      print("$e is double");
    }
  }
}