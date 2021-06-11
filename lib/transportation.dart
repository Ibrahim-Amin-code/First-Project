import 'vehicle.dart';

  class Transportation
  {
    Vehicle _vehicle;

    Transportation(Vehicle vehicle)
    {
      this._vehicle = vehicle;
    }


    void gotoShoppingCenter()
    {
      _vehicle.drive();
    }

    void givePlateNumber(){
     String plateNumber = _vehicle.getPlanteNumber();
     print('1651651');
    }

    void takeToMechanic(){
      double sizeEngine = _vehicle.engineSize();

    }


}