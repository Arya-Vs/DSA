void main(List<String> args) {
  List<int>array=[3,5,8,9,7,8,9,1,2,3,4,5];
  quickSort(array: array, low: 0, high: array.length-1);
  //selectionSort(array: array);
  //bubbleSort(array);
  //insertionSort(array: array);
 
  print(array);
}

int partition({required List<int>array, required int low, required int high}){
   int pivot = array[high];
   int i = low-1;
   for(int j=low;j<high;j++){
    if(array[j]<pivot){
      i++;
      int temp = array[j];
      array[j] = array [i];
      array[i]=temp;
    }
   }

   int temp = array[i+1];
   array[i+1] = array[high];
   array[high] = temp;

   return i+1;
}
quickSort({required List<int>array, required int low, required int high}){
  if(low<high){
    int par = partition(array: array, low: low, high: high);

    quickSort(array: array, low: low, high: par-1);
    quickSort(array: array, low: par+1, high: high);
  }
}