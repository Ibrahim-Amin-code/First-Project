
  import 'package:Challenges001/animal.dart';
import 'package:Challenges001/moveAble.dart';

class Whale extends Animal implements MoveAble
  {
  Whale() : super('Whale', 'Sea', 'Small FIsh');

  @override
  void eat() {
  print('Iam Eating Small Fish');
  }

  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  void swim() {
    print('Iam swimming In The Sea');

  }


  }