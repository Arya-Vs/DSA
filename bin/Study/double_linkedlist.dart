class Node{
  int data;
  Node ?next;
  Node? prev;
  Node (this.data);
}
class doubleLinkedlist{
  Node? head;
  Node? tail;
   
   addnode(int data){

      Node newNode=Node(data);
      if(head==null){
        head=newNode;

      }
      else{
        tail!.next=newNode;
        newNode.prev=tail;
      }
      tail=newNode;
   }
   displayf(){
    Node ? temp=head;
    if(temp==null){
      return null;
    }
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
   }
   displayb(){
    Node? temp=tail;
    if(temp==null){
      return null;
    }
    while(temp!=null){
      print(temp.data);
      temp=temp.prev;
    }
   }
}
void main(){
  doubleLinkedlist link=doubleLinkedlist();
  link.addnode(10);
  link.addnode(20);
  link.addnode(30);
  link.addnode(40);

  link.displayf();
  print("_________________________");
  link.displayb();
}