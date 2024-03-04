void main() {
  String result = replaceEachAlphaToAnother("Arya", 3);
  print(result);
}

String replaceEachAlphaToAnother(String str, int key) {
  int value = key % 26;
  List<String> charArray = [];

  for (int rune in str.runes) {
    int ascii = rune + value;

    if (ascii <= 122) {
      charArray.add(String.fromCharCode(ascii));
    } else {
      ascii = (ascii - 122) + 96;
      charArray.add(String.fromCharCode(ascii));
    }
  }

  return charArray.join();
}
