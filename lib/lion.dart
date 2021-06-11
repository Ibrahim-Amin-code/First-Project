
  import 'package:Challenges001/animal.dart';
import 'package:Challenges001/moveAble.dart';

class Lion extends Animal implements MoveAble
  {
  Lion() : super('Lion', 'Forest', 'Meat');

  @override
  void jump() {
    print('Iam Jumping');
  }

  @override
  void run() {
    print('Iam Running');
  }

  @override
  void swim() {
    // TODO: implement swim
  }

  @override
  void eat() {
    print('Iam Eating Meat');
  }



  }