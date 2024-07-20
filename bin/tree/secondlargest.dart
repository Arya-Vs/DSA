import 'dart:collection';

class Node{
  int data;
  Node? right;
  Node? left;
  Node(this.data);
}
class Tree{
  Node?root;
  insertion(int data){
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
      }
      else{
        return;
      }
    }

  }
  // void bfs(){
  //   if(root==null)return;

  //   Queue<Node?> queue=Queue<Node?>();
  //   queue.add(root);
  //   print("BFS");
  //   while(queue.isNotEmpty){
  //     Node?current=queue.removeFirst();
  //     print(current!.data);
  //     if(current.left!=null){
  //       queue.add(current.left);
  //     }
  //     if(current.right!=null){
  //       queue.add(current.right);
  //     }
  //   }
  // }
void secondLargestBfs() {
    if (root == null || (root!.left == null && root!.right == null)) {
      print("Tree does not contain enough nodes.");
      return;
    }

    Queue<Node?> queue = Queue<Node?>();
    queue.add(root);

    List<int> elements = []; // List to store BFS elements

    while (queue.isNotEmpty) {
      Node? current = queue.removeFirst();
      elements.add(current!.data); // Add current node's data to the list

      if (current.left != null) {
        queue.add(current.left);
      }

      if (current.right != null) {
        queue.add(current.right);
      }
    }

    // Sort the elements in descending order
    elements.sort((a, b) => b.compareTo(a));

    if (elements.length >= 2) {
      print("Second largest number in BFS traversal: ${elements[1]}");
    } else {
      print("Second largest number not found.");
    }
}
  }

void main(){
  Tree obj=Tree();
  obj.insertion(10);
  obj.insertion(20);
  obj.insertion(30);
  obj.insertion(40);
  obj.secondLargestBfs();
  
}