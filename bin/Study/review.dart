import 'dart:io';

void main(){
  int num;
  bool prime=true;

  print("Enter a number");
  num=int.parse(stdin.readLineSync()!);
  if(num<2){
    prime=false;
  }else{
    for(int i=0;i<num~/2;i++){
      if(num%i==0){
        prime=false;
        break;
      }
    }
  }
  if(prime){
    print("prine");
  }else{
    print("Not prime");
  }
}