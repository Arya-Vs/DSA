import 'dart:io';

void main() {
  String word;
  print('Enter a word: ');
  word = stdin.readLineSync()!;
  print('Entered word is: $word');
}
