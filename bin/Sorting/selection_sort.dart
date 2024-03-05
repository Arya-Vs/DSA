void main(){
  List<int>array=[3,2,5,6,1,4];
  selectionsort(array:array);
  print(array);
}

void selectionsort({required List<int> array}) {
  int size=array.length-1;
  for(int i=0;i<=size;i++){
    for(int j=i+1;j<=size;j++){
      if(array[i]>=array[j]){
        int temp=array[i];
        array[i]=array[j];
        array[j]=temp;
      }
    }
  }
}