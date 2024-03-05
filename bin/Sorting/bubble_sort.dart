void main(){
  List<int>array=[9,5,8,7,3,4,2,6,1];
  bubbleSort(array:array);
  print(array);
}

void bubbleSort({required List<int> array}) {
  int size=array.length;
  for(int i=0;i<size;i++){
    for(int j=0;j<size-i-1;j++){
      if(array[j]>array[j+1]){
        int temp=array[j];
        array[j]=array[j+1];
        array[j+1]=temp;
      }
    }
  }
}