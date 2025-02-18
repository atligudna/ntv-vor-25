import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
 /* print("Hvað er uppáhaldstalan þín?");
  String inputNumber = stdin.readLineSync().toString();
  //readlindsync býr til svarlínu
  print("Hún er $inputNumber");
  int result = 5 * int.parse(inputNumber);
  print("5 * $inputNumber er $result");


  int number1 = 3;
  int number2 = 8;
  double result2 = number2 / number1;
  print(result2.toStringAsFixed(3));

  print("Hvað heitir þú?");
  String firstName = stdin.readLineSync(encoding: utf8).toString();
  print("Hello $firstName");
  print("En seinna nafn?");
  String lastName =stdin.readLineSync(encoding: utf8).toString();
  String fullName = firstName + " " + lastName;
  print("Hello $fullName");
  */

  String firstName = "Atli Már";
  String lastName = "Guðnason";
  String fullName = firstName + " " + lastName;
  String url = "@ntv.is";

  //String fixName = firstName.replaceAll(" ", "");
  //fixName = fixName.toLowerCase();

  List<String> names = firstName.split(" ");
  print(names);
  print(names[0]);
  print(names[1]);
  
  String username = names[0] + names[1].substring(0,1) + lastName.substring(0,3);
  print(username.toLowerCase());
}