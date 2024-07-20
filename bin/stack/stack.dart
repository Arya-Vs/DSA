import '../Recursion/recursive_binary_search.dart';

void main(){
  List<int>array=[3,41,53,145,1];
  int target=1;
  int result=binarySearch(array, target);
  print(result);

}

int binarySearch(List<int>array,int target){
  int leftindex=0;
  int rightindex=array.length-1;
  while(leftindex<=rightindex){
    int middile=array.length~/2;
    if(array[middile]==target){
      return middile;
    }else if(array[middile]<target){
      leftindex=middile+1;
    }else{
      rightindex=middile-1;
    }
  }
  return -1;
}