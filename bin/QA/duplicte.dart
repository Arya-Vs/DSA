
/////////duplicate elements///////////////

// void main (){
//   List<int>array=[1,2,3,6,5,4,1,3,5,5];
//  Set<int>dup=Set<int>.from(array);
//  print(dup);
// }



/////////////////////print the duplicate elements

// void main(){
//   List<int>array=[1,4,2,7,3,9,1,2,3];
//   Set<int>dup={};
//   for(int i=0;i<array.length;i++){
//     if(dup.contains(array[i])){
//       print(array[i]);
//     }else{
//       dup.add(array[i]);
//     }
//   }
// }


///////////sum of duplicate elements

void main(){
  List<int>array=[1,4,2,7,3,9,1,2,3];
  int sum=0;
  Set<int>dup={};
  for(int i=0;i<array.length;i++){
    if(dup.contains(array[i])){
      print(array[i]);
      sum+=array[i];
    }else{
      dup.add(array[i]);
      
    }
  }
 print(sum);
}
