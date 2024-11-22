void main() {
  List<int> numbers = [2, 1, 8, 3];
  
  List<int> oddNumbers = findOddNumbers(numbers);
  List<int> evenNumbers = findEvenNumbers(numbers);
  
  print('Odd numbers: $oddNumbers');
  print('Even numbers: $evenNumbers');
}

List<int> findOddNumbers(List<int> numbers) {
  if (numbers.isEmpty) {
    return [];
  }
  int first = numbers.first;
  List<int> rest = numbers.sublist(1);
  
  if (first % 2 != 0) {
    return [first] + findOddNumbers(rest);
  } else {
    return findOddNumbers(rest);
  }
}

List<int> findEvenNumbers(List<int> numbers) {
  if (numbers.isEmpty) {
    return [];
  }
  int first = numbers.first;
  List<int> rest = numbers.sublist(1);
  
  if (first % 2 == 0) {
    return [first] + findEvenNumbers(rest);
  } else {
    return findEvenNumbers(rest);
  }
}



// oddoreve(n){
//   if(n==1)return 'odd';
//   if(n==0)return 'even';
//   return oddoreve(n-2);
// }
// void main(){
//  print( oddoreve(3));
// }