

 import 'package:Challenges001/agent.dart';
import 'package:Challenges001/payment.dart';

class Stripe implements Payment {
  @override
  String getToken() {
    // TODO: implement getToken
    return null;
  }


  @override
  String makeCharge(String token, double amount, Agent agent) {
    // TODO: implement makeCharge
    return null;
  }
  
 }