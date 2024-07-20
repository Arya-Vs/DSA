import 'dart:io';
import 'dart:js_interop';

class Node{
  int data;
  Node?right;
  Node?left;
  Node(this.data);
}
class Tree{
  Node?root;
  insert(int data){
    Node value=Node(data);
    Node ?curr=root;
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
     }
     else if(data>curr.data){
      curr=curr.right;
      if(curr==null){
        parent.right=value;
        return;
      }
     }
     else {
      return;
     }
    }
  }
  // InorderTraversal(Node? trees){
  //   if(trees!=null){
  //     InorderTraversal(trees.left);
  //     print(trees.data);
  //     InorderTraversal(trees.right);
  //   }
  // }
  // displayInorder(){
  //   print("Trees:");
  //   InorderTraversal(root);
  // }



  // preeOrderTraversel(Node?trees){
  //   if(trees!=null){
  //     print(trees.data);
  //     preeOrderTraversel(trees.left);
  //     preeOrderTraversel(trees.right);
  //   }
  // }
  // displayPreOder(){
  //   print("Trees:");
  //   preeOrderTraversel(root);
  // }


  // postOrderTraversal(Node?trees){
  //   if(trees!=null){
  //     postOrderTraversal(trees.left);
  //     postOrderTraversal(trees.right);
  //     print(trees.data);
  //   }
  // }
  // displayPostOrder(){
  //   print("Trees:");
  //   postOrderTraversal(root);
  // }


bool isBst(Node?node,int?minValue,int?maxValue){
  if(node==null){
    return true;
  }
  if((minValue!=null&&node.data<=minValue)||(maxValue!=null&&node.data>=maxValue)){
    return false;
  }
  return isBst(node.left, minValue, node.data)&& isBst(node.right, maxValue, node.data);
}
bool isBinarySearchTree(){
  return isBst(root, null, null);
}
}



void main(){
  Tree obj=Tree();
  obj.insert(1);
  obj.insert(2);
  obj.insert(3);
  obj.insert(4);
  // obj.displayInorder();
  // obj.displayPreOder();
  // obj.displayPostOrder();

  bool isbst=obj.isBinarySearchTree();
  print(isbst);
}