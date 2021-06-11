    import 'dart:math';

void indexFuondOrNot() {
  Random random = Random();
  List<int> myList = [];
  for (int i = 0; i < 20; i++) {
    int myInt = random.nextInt(20);
    myList.add(myInt);
  }
  print(myList);
  if (myList.contains(11)) // شوف الرقم 11 موجود في index رقم كام
      {
    int index = myList.indexOf(11); // شوف الرقم 11 موجود في index رقم كام جوه ال  list دي
    print('The Number 11 is in index number $index'); // لو موجود اطبع دي
  } else {
    print('Sorry The Index Number 11 Can,t Find It'); // لو مش موجود اطبع دي
  }
}