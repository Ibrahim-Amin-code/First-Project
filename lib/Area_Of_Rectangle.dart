
 import 'dart:io';

void areaResult()
    {
      printWelcome();
      double width = getWidth();
      double length = getLength();
      double result = calcu(length, width);
      print("The Result Is $result");


    }

    double getWidth()
    {
    print("Enter The Width: ");
    String width = stdin.readLineSync();
    return double.parse(width) ;
    }
    double getLength()
    {
      print("Enter The Length");
      String length = stdin.readLineSync();
      return double.parse(length);
    }

    double calcu(double length , double width)
    {
      return length * width ;
    }

    void printWelcome()
    {
      print("Welcome To Our Tool , Please Enter Length And Width");
    }