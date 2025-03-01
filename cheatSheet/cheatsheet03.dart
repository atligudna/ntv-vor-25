import 'dart:io';
import 'dart:math';

void main() {
  // Number guessing game

  print("Welcome to Number game.");

  int randomNumber = Random().nextInt(100) + 1;
  //print("The random Number is $randomNumber");

  bool rightNumber = true;
  while (rightNumber == true) {
    print("Guess a number between 1 og 100");
    String? input = stdin.readLineSync();
    int inputNumber = int.parse(input!);
    int diff = (inputNumber - randomNumber).abs();
    //print(diff);

    if (inputNumber == randomNumber) {
      print("Congratulation. You were right.");
      rightNumber = false;
    }
    if (inputNumber < randomNumber && diff > 10){
      print("Your number is way too low. Try again");
    }
    if (inputNumber < randomNumber && diff <= 10){
      print("Your number is too low. Try again");
    }
    if (inputNumber > randomNumber && diff > 10){
      print("Your number is way too high. Try again");
    }
    if (inputNumber > randomNumber && diff <= 10){
      print("Your number is too high. Try again");
    }
  }
}