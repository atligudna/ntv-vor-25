import 'dart:io';

void main(List<String> arguments) {
  bool validNumber = false;
  while (validNumber == false) {
    print("Enter your Phone number.");
    String phoneNumber = stdin.readLineSync().toString();
    if (phoneNumber.contains("+354")) {
      phoneNumber = phoneNumber.replaceAll("+354", "");
      print ("Þú skrifaðir $phoneNumber, ég tek +354 út.");
    }
    if (phoneNumber.length == 8) {
      // if(phoneNumber.contains("-")) {
      // print("Þetta símanúmer er með -");
      // }
      phoneNumber = phoneNumber.replaceAll("-", "");
      phoneNumber = phoneNumber.replaceAll(" ", "");
      print("Þú skrifaðir $phoneNumber, ég tek út - og bil.");
    }
    int? phoneNumberStorage = int.tryParse(phoneNumber);
    if (phoneNumber.length == 7 && phoneNumberStorage is int) {
      print("Ok nice, ég er með rétta lengd en þetta eiga bara að vera tölustafir");
      if (phoneNumber[0] != "1") {
        print("þetta símanúmer er valid");
        validNumber = true;
      }
      print("Ertu ekki að grínast, af hverju byrjar númerið þitt á 1.");
    }
  }
}