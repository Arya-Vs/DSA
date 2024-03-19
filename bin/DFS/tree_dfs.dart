
class Node {
  int data;
  Node? right;
  Node? left;
  Node(this.data);
}

class Treee {
  Node? root;

  insert(int data) {
    Node value = Node(data);
    Node? curr = root;
    Node? parent;

    if (root == null) {
      root = value;
      return;
    }

    while (curr != null) {
      parent = curr;
      if (data < curr.data) {
        curr = curr.left;
      }
      if (curr == null) {
        parent.left = value;
        return;
      } else if (data > curr.data) {
        curr = curr.right;
        if (curr == null) {
          parent.right = value;
          return;
        }
      } else {
        return;
      }
    }
  }

  displayInorder() {
    print("Inorder Traversal:");
    _inOrderTraversel(root);
    print("");
  }

  displayPreOrder() {
    print("Preorder Traversal:");
    _preOrderTraversel(root);
    print("");
  }

  displayPostOrder() {
    print("Postorder Traversal:");
    _postOrderTraversal(root);
    print("");
  }

  bool isBst(Node? node, int? minValue, int? maxValue) {
    if (node == null) {
      return true;
    }
    if ((minValue != null && node.data <= minValue) ||
        (maxValue != null && node.data >= maxValue)) {
      return false;
    }
    return isBst(node.left, minValue, node.data) &&
        isBst(node.right, node.data, maxValue);
  }

  bool isBinarySearchTree() {
    return isBst(root, null, null);
  }

 

  void _inOrderTraversel(Node? treen) {
    if (treen != null) {
      _inOrderTraversel(treen.left);
      print(treen.data);
      _inOrderTraversel(treen.right);
    }
  }

  void _preOrderTraversel(Node? treen) {
    if (treen != null) {
      print(treen.data);
      _preOrderTraversel(treen.left);
      _preOrderTraversel(treen.right);
    }
  }

  void _postOrderTraversal(Node? treen) {
    if (treen != null) {
      _postOrderTraversal(treen.left);
      _postOrderTraversal(treen.right);
      print(treen.data);
    }
  }

  void dfs(){
    print("DFS Traversal:");
    _dfsTraversal(root);
  }
  void _dfsTraversal(Node?node){
    if(node==null) return;

    print(node.data);// print the current nodes data

    _dfsTraversal(node.left); //Traverse left subtree
    _dfsTraversal(node.right); //Traverse right subtree

  }
  void inOrderTraversel(Node?treen){
    if(treen!=null){
      _inOrderTraversel(treen.left);
      print(treen.data);
      _inOrderTraversel(treen.right);
    }
  }
}

void main(List<String> args) {
  Treee wroom = Treee();
  wroom.insert(10);
  wroom.insert(20);
  wroom.insert(30);
  wroom.insert(40);
  wroom.insert(50);
  wroom.insert(60);
  wroom.insert(70);
  wroom.insert(80);
  wroom.displayInorder();
  wroom.displayPreOrder();
  wroom.displayPostOrder();
  print("___________");
  wroom.dfs();
  print("_________________");
 
}