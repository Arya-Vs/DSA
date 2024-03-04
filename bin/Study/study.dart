import '../Recursion/recursive_binary_search.dart';

void main(){
  List<int>arr=[1,4,2,5,3,7];
  arr.sort();
  int target=5;
  int result=binarySearch(arr, target);
  print(arr);
  print(result);
  
}

int binarySearch(List<int>arr,int target){
int leftindex=0;
int rightindex=arr.length-1;

while (leftindex<=rightindex) {
  int middileindex=(leftindex+rightindex)~/2;
  if (arr[middileindex]==target) {
    return middileindex;
  }
  else if(arr[middileindex]<target){
    leftindex=middileindex+1;
  }
  else{
    rightindex =middileindex-1;
  }
}
return -1;
}