// void main() {
//   bool result = isPalindrome("A man, a plan, a canal, Panama");
//   print(result);
// }

// bool isPalindrome(String s) {
//   s = s.replaceAll(RegExp("[^a-zA-Z0-9]"), '').toLowerCase();
//   String reversedString = String.fromCharCodes(s.runes.toList().reversed);
//   return s == reversedString;
// }

void main() {
  String result = "lal";
  String original=result.toLowerCase();
  String re=original.split('').reversed.join();
  if (re==original) {
    print("palindrome");
  }
  else{
    print("not palindrome");
  } 
}

// bool isPalindrome(String str) {
//   String reversed = str.split('').reversed.join('');
//   if(str == reversed){
//     return true;
//   }
//   return false;
// }
// void main(){
//   print(isPalindrome('rahul'));
// }