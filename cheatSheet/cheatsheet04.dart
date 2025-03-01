import 'dart:io';

void main() {
  /*
  // create a list
  List names = ["John", "Hjalti", "Jón", "Gunnar"];
  print(names);

  // Change an item in a list
  names[0] = "Atli";
  names[2] = "Siggi";

  // add to a list
  names.add("Einar");
  print (names);

  // add multiple
  names.addAll(["Kristrún", "Inga", "Þorgerður"]);
  print(names);

  //i Insert a specific location
  names.insert(0, "Bjarni Ben");
  print(names);
  
  //insert many
  names.insertAll(2, [2,3,4]);
  print(names);

  names.add([2,3,4]);
  print(names);
  //remove
  names.remove("Bjarni Ben");
  print(names);

  //remove at
  names.removeAt(3);
  print(names);

  int AtliIndex = names.indexOf("Atli");
  print(AtliIndex);
  names.removeAt (AtliIndex);
  print(names);


  List nums = [5,4,3,2,1,9,8,7,6];
  List chars = ["a", "b", "d", "g", "f", "e"];
  print(nums);
  print(chars);

  // sort the list
  chars.sort();
  print(chars);
  nums.sort();
  print(nums);

  // remove between 2 indexes
  nums.removeRange(2, 6);
  print(nums);

  nums.removeLast();
  print(nums);



// LOOPS

    // for loops
  for(int i = 1; i <= 10; i++){
    print(i);
  }

  for(int j = 10; j >= 1; j--){
    print(j);
  }
  */

  // for in
/*
  List animals = ["Lion", "Pig", "Cow", "Horse"];
  print(animals);

  for(String animal in animals){
    print(animal);
  }
  int numb = 5;



  //while
    while(numb > 0) {
      numb--;
      print(numb);
    }


    // do while
    do{
      numb--;
      print(numb);
    }
    while(numb>0);



    List numbs = [1,2,3,4,5,6,7,8,9,32,234,4325];
  // Take a list and write a program that prints
  // the elements of the list that ar less than 5
  for (int num in numbs){
    if (num < 5){
      print(num);
    }
  }


 */
  // Take two list and write a program that returns a list that contains
  // the elements of both lists
  List numbs1 = [1,2,3,4,5,6,7,8,9,32,234,4325];
  List numbs2 = [1,3,4,5,7,8,3,4325];
  List commonNumbs = [];

  for (int i in numbs1){
    for (int j in numbs2){
      if (i == j) {
        commonNumbs.add(j);
      }
    }
  }
  print(commonNumbs);
}