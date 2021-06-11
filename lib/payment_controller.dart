  import 'package:Challenges001/agent.dart';
import 'package:Challenges001/payment.dart';

class PaymentController
  {
    Payment _payment;

    PaymentController(Payment payment){
      this._payment = payment;

    }

    void makeCharge(Agent agent , double amount)
    {
      String token = _payment.getToken();
     String response = _payment.makeCharge(token, amount, agent);
    }

    void registerPayment(){

    }




  }