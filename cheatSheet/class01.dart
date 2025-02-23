import 'dart:convert';
import 'dart:io';
import 'package:ntv_vor_25/methods.dart';

extension StringCasingExtension on String {
  String get toCapitalized => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String get toTitleCase => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized).join(' ');
}

void main(List<String> arguments) {
  /*
    0. Create a personal message. Use a variable to represent a person's name, and print a
    message to that person. Your message should be simple, such as 'Good morning
    Hjörtur, would you like to learn Dart strings today?'
    Store Message and Name in seperate variable.
   */

  String name = "Atli";
  print("Góðan daginn $name, myndir þú vilja læra á Dart í dag?");

  /* 1. Find a quote from a famous person you admire. Print the quote and the name of its
  author. Your output should look something like the following, including the
  quotation marks:
  1. Albert Einstein once said, 'A person who never made a mistake never tried
  anything new.'
  */

  String quote = "Be yourself, everyone else is already taken";
  String author = "Oscar Wilde";
  print('$author once said, "$quote".');

  /*
    2. Assign a message to a variable, and print that message. Then change the value of
  the variable to a new message, and print the new message.
   */

  String message = "I love you";
  print(message);
  message = "Love you too";
  print(message.toUpperCase());

  /*
    3.  Remove all the spaces from the rhyme. And print the modified rhyme.
   */
  String NureseryRyhme = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";

  String fixNureseryRyme = NureseryRyhme.replaceAll(" ", "");
  print(fixNureseryRyme);

  /*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */

  print("Hvað heitir þú?");
  String firstname = stdin.readLineSync(encoding: utf8).toString();
  print("Hvað heitir þú að seinna nafni?");
  String lastname = stdin.readLineSync(encoding: utf8).toString();
  //firstname = "Pulsa";
  print(firstname.toUpperCase() + " " + lastname.toUpperCase());
  String capfirstname = firstname.substring(0,1).toUpperCase() + firstname.substring(1,firstname.length).toLowerCase();
  String caplastname = lastname.substring(0,1).toUpperCase() + lastname.substring(1,lastname.length).toLowerCase();
  print(caplastname + " " + capfirstname);


 /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
      */

  String SSN1 = "200689-2409";
  String fixSSN1 = SSN1.replaceAll("-", "");
  print(fixSSN1);
  String SSN2 = "200689 2409";
  String fixSSN2 = SSN2.replaceAll(" ", "");
  print(fixSSN2);
  String SSN3 = "2 006 8924 09";
  String first = fixSSN1.substring(0,1);
  String second = fixSSN1.substring(1,4);
  String third = fixSSN1.substring(4,8);
  String fourth = fixSSN1.substring(8,10);

  print(first + second  + third  + fourth);

  /*
  Bónus task calculate the age from the SSN.
  ADFASDAS
   */
}
