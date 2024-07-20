class Node{
  int data;
  Node?rigth;
  Node?left;
  Node(this.data);
}
class Treee{
  Node? root;

  insert(int data){
    Node value=Node(data);
    Node?curr=root;
    Node?parent;

    if(root==null){
      root=value;
      return;
    }
    while(curr != null){
      parent = curr;
      if(data<curr.data){
        curr=curr.left;
      }
      if(curr==null){
        parent.left=value;
        return;
     
      }else if(data>curr.data){
        curr=curr.rigth;
        if(curr==null){
          parent.rigth=value;
          return;
        }
      }else{
        return;
      }
    }
  }
 void _dfsTraversal(Node?node){
  if(node==null)return;

  print(node.data);
  _dfsTraversal(node.left);
  _dfsTraversal(node.rigth);
 }

 void dfs(){
  print("DFS Traversal:");
  _dfsTraversal(root);
 }
 
 
}
void main(List<String>args){
  Treee obj=Treee();
  obj.insert(10);
  obj.insert(20);
  obj.insert(30);
  obj.insert(40);
  obj.insert(50);
  obj.dfs();

}