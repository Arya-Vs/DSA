// import 'dart:io';
// void main(){
//   int limit=0;
//   dynamic str;
//   bool palindrome=true;
//   print("Enter a String");
//   str=stdin.readLineSync();
//   limit=str.length;
//   for(int i=0;i<limit;i++){
//     if(str[i]!=str[(limit-1)-i]){
//       palindrome=false;
//       break;
//     }
//   }
//   if(palindrome==true){
//     print("palindrome");
//   }else{
//     print("not palindrome");
//   }
// }

import 'dart:io';

void main(){
  int limit=0;
   dynamic str;
   bool palindrome=true;

   print("enter a String");
   str=stdin.readLineSync();
   limit=str.length;
   for(int i=0;i<limit;i++){
    if(str[i]!=str[limit-1-i]){
      palindrome=false;
      break;
    }
   }
   if(palindrome==true){
    print("palindrome");
   }else{
    print("Not palindrome");
   }
}