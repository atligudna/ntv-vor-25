import 'dart:io';

void main() {
  // GRADING

  print("====== GRADING PROGRAM ======");
  stdout.write("Pick a number between 1 and 100: \n");
  String? input = stdin.readLineSync();


  try {
    int score = int.parse(input!);
    if (score < 1 || score > 100) {
      print("Invalid input, please enter a number betwwn 1-100");
    } else {
      if (score >= 90) {
        print("Grade: A, Good job");
      } else if (score >= 80) {
        print("Grade; B, Good job");
      } else if (score >= 60) {
        print("Grade; C, Medium job");
      } else if (score >= 50) {
        print("Grade; D, not bad job");
      } else {
        print("Grade: E");
        print("Terrible job");
      }
    }
  } catch (e) {
    print("ERROR!");
  }

  bool isNotLoading = false;
  // Turnery operator
    isNotLoading ? print("Not Loading") : print("Loading...")

  if(isNotLoading){
    print("Not loading...");
  } else {
    print("Loading...");
  }
}

else if (val == 2) {
for (int l = 0; l < drinks.length; l++) {
print("${l + 1} ${drinks[l]}");
}
stdout.write("Veldu tölu til að velja drykk eða hætta: \n");
String? input3 = stdin.readLineSync();
int val3 = int.parse(input3!);
if(val3 = drinks.length){
for (int i = 0; i < head.length; i++) {
print("${i + 1} ${head[i]}");
} else {
order.add(drinks[val3]);
}}}

