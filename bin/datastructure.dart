class Node{
  int data;
  Node? next;
  Node(this.data);
}

class Linkedlist{
  Node? head;
  Node? tail;

 addnewdata(int data){

Node newnode=Node(data);
if(head==null){
  head=newnode;
}
else{
  tail!.next=newnode;
}
tail=newnode;
  }
  display(){
    Node? temp=head;

    if(temp==null){
      return null;
    }
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }

  }

  remove(int data){
    Node? temp=head;
    Node? prev;

    if(temp!=null && temp.data==data){
      head=temp.next;
      return;
    }
    while(temp!=null && temp.data!=data){
      prev=temp;
      temp=temp.next;
    }
    if(temp==tail){
      tail=temp;
      tail!.next=temp;
    }
    prev!.next=temp!.next;
  }
}
void main(){
  Linkedlist link=Linkedlist();
  link.addnewdata(10);
  link.addnewdata(20);
  link.addnewdata(30);
  link.addnewdata(40);
  link.addnewdata(50);

  link.display();
  link.remove(30);
}
