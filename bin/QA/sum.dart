import '../Recursion/recursive_arraysum.dart';

void main(){
  List<int>number=[100,200,330,400,550,600];
    int sum=0;

  List<int> sort=number.sublist(0,3);
  print(sort);
  for(int i=0;i<=sort.length-1;i++){
    sum+=sort[i];
  }
  print(sum);
  
}

