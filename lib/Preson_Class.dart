//main(){
//Preson preson = Preson('Ibrahim','Egypt','SSW');
//preson.walk();
//}

class Preson{
  String name;
  String address;
 final String jobTitle;

  Preson(this.name, this.address, this.jobTitle);

  void walk(){
  print("Iam Walking");
  }

  void work(){
  print("Iam Working");
  }
  }

//main(){
// Ibrahim ibrahim = Ibrahim("Hema", "Mansoura", "Jonuior");
// ibrahim.work();
//}
  class Ibrahim extends Preson
  {
  Ibrahim(String name, String address, String jobTitle) : super(name, address, jobTitle);

      void eat(){
        print("Iam Eating");
      }

  }

