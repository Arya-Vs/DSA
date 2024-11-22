void main(){
  List<int>arr=[21,4,5,6];
  for(int i=0;i<arr.length~/2;i++){
    int temp=arr[i];
    arr[i]=arr[arr.length-i-1];
    arr[arr.length-i-1]=temp;
  }
  print(arr);
}