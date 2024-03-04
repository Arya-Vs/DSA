
void main(List<String> args) {
  List<int>array=[3,5,8,9,7,8,9,1,2,3,4,5];
  //quickSort(array: array, low: 0, high: array.length-1);
  selectionSort(array: array);
  //bubbleSort(array);
  //insertionSort(array: array);
 
  print(array);
}
selectionSort({required List<int>array }){
  int size=array.length-1;
  for(int i=0;i<size;i++){
    for(int j=i+1;j<size;j++){
      if(array[i]>=array[j+1]){
        int temp=array[i];
        array[i]=array[j+1];
        array[j+1]=temp;
      }
    }
    
  }
}