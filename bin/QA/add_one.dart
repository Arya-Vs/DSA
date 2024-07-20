void main(){
  List<int>array=[1,2,3,4,5,6];
  for(int i=0;i<=array.length-1;i++){
    if(array[i]%2==0){
      array.remove(array[i]);
      array.insert(array[i], 1);
    }
  }
  print(array);
}