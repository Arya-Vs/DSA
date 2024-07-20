void main(List<String> args) {
  List<int>array=[3,5,8,9,7,8,9,1,2,3,4,5];
  insertionSort(array: array);
  print(array);
}
insertionSort({required List<int>array}){
  for(int i=0;i<=array.length-1;i++){
    int temp = array[i];
    int j = i-1;
    while(j>=0 && array[j]>temp){
      array[j+1] = array[j];
      j--;
    }
    array[j+1] = temp;
  }
}
