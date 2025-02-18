void main(List<String> arguments) {
  String firstName = "Atli";
  String lastName = "Guðnason";
  print("Hi $firstName $lastName");
  // Hér prentar hún út Atli Guðnason
  String fullname = firstName + " " + lastName;
  print("Hi $fullname");

  String SSN = "280984-2729";
  // replaceall er notað til að taka í burtu fyrri hlutan.
  String fixSSN = SSN.replaceAll("-", "");
  int ssnLength =fixSSN.length;
  print(ssnLength);

  String message = "Hello World";
  String fixmessage = message.replaceAll("World", "NTV");
  print(fixmessage.toUpperCase());

  String birthDate = SSN.substring(0,6);
  print(birthDate);

  String email = "Atligudna@gmail.com";
  print(email.toLowerCase());


}