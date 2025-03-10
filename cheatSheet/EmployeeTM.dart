import 'dart:math';

import 'package:ntv_vor_25/methods.dart';
// pakki í lib

void main(){
  company Bonus = company(id: 1, name: "Bónus",
      domainURL: "bonus.is", type: "Supermarket");
  company Kronan = company(id: 2, name: "Krónan",
      domainURL: "kronan.is", type: "Supermarket");
  company Steypustodin = company(id: 3, name: "Steypustöðin",
      domainURL: "steypustodin.is", type: "Building");
  List<company> myCompanyList = [];
  myCompanyList.add(Bonus);
  myCompanyList.add(Kronan);
  myCompanyList.add(Steypustodin);
  //sækjum lista frá þessum file í lib
  List<String> employees = getNamesList();
  // Búum til tóman employee lista.
  List<employee> employeesTM = [];
  // Loopum í gegnum listann
  for (String employeeName in employees) {
    // Búum til username með create UN function her að neðan,
    String username = createUserName(employeeName);
    var random = Random();
    int randomCompany = random.nextInt(3);
    int randomAge = random.nextInt(55);
    int age = randomAge + 20;
    company tempCompany = myCompanyList[randomCompany];
    // Búum til nýtt employee object.
    // Obejct er okkar tegund af sting, bool eða int.
    // Getur geymt meira
    employee newEmployee = employee(
        name: employeeName,
        age: age,
        username: username,
        employer: tempCompany
    );
    tempCompany.employees.add(newEmployee);
    // Bætum þessum newemployee í listan okkar sem við bjuggum til.
    employeesTM.add(newEmployee);
    //prentum út.

  }
  for (employee e in employeesTM) {
    if (e.employer.id == 1) {
      print(e.name);
      print(e.age);
      print(e.username);
      print(e.employer.name);
      print(e.employer.type);
      print("_______________________");
    }
    }
}

//Herna er employee classinn okkar
class employee {
  String name;
  int age;
  String username;
  company employer;
  employee({required this.name, required this.age,
    required this.username, required this.employer});
}

// Hérna er company classinn okkar
class company {
  int id;
  String name;
  String domainURL;
  String type;
  List<employee> employees = [];
  company({required this.id, required this.name, required this.domainURL,
    required this.type});

}

//Hérna er Create user name functionið.
String createUserName(String tempName) {
  List splitName = tempName.split(" ");
  String firstName = splitName[0];
  String lastName = splitName[1];
  String username = firstName + lastName.substring(0,3);
  username = removeIcelandicLetters(username);
  username = username.toLowerCase();
 return username ;
}


String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;
}