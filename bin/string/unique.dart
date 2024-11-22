void main(){
  String words="apple";
  List<String>char=words.split('');
  Set<String>uniqueChars=char.toSet();
  print(uniqueChars);
}

// // void main(){
//   String words='apple';
//   List<String>char=words.split('');
//   List<String>uniqueChars=char.toSet().toList();
//   print(uniqueChars);
// // }