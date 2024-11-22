void main(){
  List<String>arr=['apple'];
List<String>res=arr[0].split('');

if(res.length>1){
var temp=res[0];
res[0]=res[res.length-1];
res[res.length-1]=temp;
}
String a=res.join();
print(a);
}