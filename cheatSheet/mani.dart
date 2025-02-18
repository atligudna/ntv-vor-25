
import 'dart:io';

void main(List<String> arguments) {
  print("Hvað heitir þú?");
  String mani = stdin.readLineSync().toString();
  //readlindsync býr til svarlínu
  print(" als ekki gaman að sjá þig $mani");
}