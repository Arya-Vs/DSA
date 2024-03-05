void main(List<String> args) {
  List<int>array=[3,5,8,9,7,8,9,1,2,3,4,5];
  mergeSort(array);
  print(array);
}

mergeSort(List<int>array){
  if(array.length<=1){
    return;
  }
  int middle = array.length ~/2;

  List<int>left = array.sublist(0,middle);
  List<int>right= array.sublist(middle);

  mergeSort(left);
  mergeSort(right);

  merge(array, left, right);

}
merge(List<int>array,List<int>left,List<int>right){
  int i=0,j=0,k=0;
  while(i<left.length&&j<right.length){
    if(left[i]<right[j]){
      array[k] = left[i];
      i++;
    }else{
      array[k] = right[j];
      j++;
    }
    k++;
  }
  while(i<left.length){
    array[k] = left[i];
    i++;
    k++;
  }
  while(j<right.length){
    array[k] = right[j];
    j++;
    k++;
  }
}