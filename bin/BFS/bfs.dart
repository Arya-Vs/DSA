import 'dart:collection';

class Node{
  int data;
  Node?right;
  Node?left;
  Node(this.data);
}
class Tree{
  Node?root;
   add(int data){
    Node value=Node(data);
    Node?curr=root;
    Node?parent;

    if(root==null){
      root=value;
      return;
    }
    while(curr!=null){
      parent=curr;
      if(data<curr.data){
        curr=curr.left;
      }
      if(curr==null){
        parent.left=value;
        return;
      }else if(data>curr.data){
        curr=curr.right;
        if(curr==null){
        parent.right=value;
        return;
      }
      }else{
      return;
    } 
    }
  }

  void bfs(){
    if(root==null) return;

      Queue<Node?>queue=Queue<Node?>();
      queue.add(root!);

      print('BFS');
      while(queue.isNotEmpty){
        Node?current=queue.removeFirst();
        print(current!.data);

        if(current.left!=null)queue.add(current.left!);
        if(current.right!=null)queue.add(current.right!);
      }
    
  }
}
void main(){
  Tree tree=Tree();
  tree.add(1);
  tree.add(2);
  tree.add(3);
  tree.bfs();
}