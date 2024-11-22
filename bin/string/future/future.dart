Future <void>fetch()async{
  await Future.delayed(Duration(seconds: 100));
  print('fetched data');
}
void main(){
  fetch();
}