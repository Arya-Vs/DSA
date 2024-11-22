void main() {
  List<String> name = ['a', 'b', 'a', 'c', 'b', 'a'];
  List<String> result = [];
  
  for (int i = 0; i < name.length; i++) {
    int count = 0; // Reset count for each element

    if (!result.contains(name[i])) {
      for (int j = 0; j < name.length; j++) {
        if (name[i] == name[j]) {
          count++;
        }
      }
      result.add(name[i]);
      print("${name[i]}: $count"); // Print each element and its count
    }
  }
}