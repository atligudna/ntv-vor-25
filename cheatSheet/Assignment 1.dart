void main(List<String> arguments) {
  // Dæmi 1
  String name = "Atli";
  print("Hello $name");

  // Dæmi 2
  int num1 = 6 ;
  int num2 = 7 ;
  int result = num1 + num2;
  print(result);

  // Dæmi 3
  double result2 = num1 / num2;
  print(result2.toStringAsFixed(3));

  // Dæmi 4
  print(-1 + 5 * 5);
  print((25 + 5) % 4);
  print(8 + 6 * 4 / 2);
  print(2 + 15 / 6 * 1 - 7 % 2);
}