// void main() {
//   int findIndexResult = findIndex([3, 4, 5, 3, 5], 4);
//   print("Index of value : $findIndexResult");
// }

// int findIndex(List<int> list, int value) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == value) {
//       return i;
//     }
//   }
//   return -1; // Return -1 if the value is not found in the list
// }
import 'dart:io';

void main(){
  List<int>number=[1,2,3,4,5,6];
  print(number);
  print('Enter a value');
  int? value=int.tryParse(stdin.readLineSync()!);
  for(int i=0;i<number.length;i++){
    if(value==null || value<0 || value>=number.length){
print('invalid inedx${number.length-1}');
    }else{
    print(number[value]);
  }
}
  }