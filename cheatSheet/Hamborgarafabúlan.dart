import 'dart:io';

void main() {
  List<String> food = ["Hamborgari: 1500 kr.", "Ostborgari: 1700 kr.",
    "Baconborgari: 1900 kr.", "Vegan Borgari: 2100 kr.", "Coca Cola: 490",
    "Franskar: 890 kr."
  ];
  List<String> order = [];
  int price = 0;
  List<int> prices = food.map((item) {
    RegExp regExp = RegExp(r'\d+'); // Matchar allar tölur
    Match? match = regExp.firstMatch(item);
    return match != null ? int.parse(match.group(0)!) : 0;
  }).toList();

  print("--- Velkomin á Fabúluna ---");
  print("Hér er matseðillinn");
  for (int i = 0; i < food.length; i++) {
    print("${i + 1}. ${food[i]}");
  }

  while (true) {
    stdout.write(
        "Veldu tölu til að bæta á pöntunarlistann (eða skrifaðu 'exit' til að hætta) \n");

    String? input = stdin.readLineSync();
    if (input == null || input.toLowerCase() == "exit") {
      print("Takk fyrir að versla hjá okkur.");
      break;
    }

    try {
      int val = int.parse(input);
      if (val >= 1 && val <= food.length) {
        order.add(food[val - 1]);
        price += prices[val - 1];
        print("Þú hefur bætt ${food[val - 1]} við pöntunina.");
        print("Heildarkostnaður er $price kr.");
      } else {
        print("Ógild tala, reyndu aftur");
      }
    } catch (e) {
      print("Sláðu inn tölu á bilinu 1- ${food.length} eða 'exit'.");
    }
  }
  if (order.isNotEmpty) {
    print ("Þín pöntun:");
    for (var item in order) {
      print ("- $item");
    }
    print("Samtals: $price");
  }
}