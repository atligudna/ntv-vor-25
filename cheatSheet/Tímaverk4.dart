void main() {
  // Create a list
      List top5 = ["Messi", "Ronaldo", "Yamal", "Haaland", "Mbappe"];
      print(top5);
  
  // Change an element
      top5[2] = "Vini Jr.";
      print(top5);

  // Add to a list
      top5.add("Yamal");
      print(top5);

  // Add many to a list
      top5.addAll(["De Bruyne", "Salah", "VAn Dijk"]);
      print(top5);
  // Create an empty list
      List top10 = [];
      print(top10);

  // Insert at a specific line
      top5.insert(3, "Kane");
      print(top5);
  // Insert many at a specific line
      top5.insertAll(4, ["Palmer", "Diaz", "Neymar"]);
      print(top5);
  // remove from a list
      top5.remove("Diaz");
      print(top5);

  // remove at an index
      top5.removeAt(2);
      print(top5);

  // Find an element's position and remove at that index
      int neymar = top5.indexOf("Neymar");
      print(neymar);
      top5.removeAt(neymar);
      print(top5);
}