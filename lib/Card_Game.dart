import 'dart:math';

void cardGame() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<String> signs = ["Hearts", "Diamonds", "Clubs", "Spade"];

  Random numberCollector = Random();
  int numberIndex = numberCollector.nextInt(12);

  String name;
  switch (numberIndex) {
    case 0:
      name = "Ace";
      break;
    case 10:
      name = "Jack";
      break;
    case 11:
      name = "Queen";
      break;
    case 12:
      name = "King";
      break;
    default:
      name = numbers[numberIndex].toString();
      break;
  }

  Random signCollector = Random();
  int signIndex = signCollector.nextInt(3);

  Map choice = {'number': name, 'sign': signs[signIndex]};
  String number = choice['number'].toString();
  String sign = choice['sign'];
  print("Your Card Is $number $sign");
}
