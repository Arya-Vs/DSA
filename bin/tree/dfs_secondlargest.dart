
class Node {
  int data;
  Node? right;
  Node? left;
  Node(this.data);
}
class Tree {
  Node? root;

  insertion(int data) {
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
  // void _dfsTraversal(Node? node) {
  //   if (node == null) return;

  //   print(node.data);
  //   _dfsTraversal(node.left);
  //   _dfsTraversal(node.right);
  // }

  // void dfs() { 
  //   print("DFS Traversal:");
  //   _dfsTraversal(root);
  // }

  void dfsForSecondLargest(Node? node, List<int> maxTwo) {
    if (node == null) return;

    // Perform in-order traversal
    dfsForSecondLargest(node.left, maxTwo);

    // Update the maxTwo list with the two largest elements
    if (maxTwo.length < 2) {
      maxTwo.add(node.data);
    } else {
      if (node.data > maxTwo[0]) {
        maxTwo[1] = maxTwo[0];
        maxTwo[0] = node.data;
      } else if (node.data > maxTwo[1] && node.data != maxTwo[0]) {
        maxTwo[1] = node.data;
      }
    }

    dfsForSecondLargest(node.right, maxTwo);
  }

  void secondLargestDfs() {
    if (root == null) {
      print("Tree is empty.");
      return;
    }

    List<int> maxTwo = []; // List to store the two largest elements
    dfsForSecondLargest(root, maxTwo);

    if (maxTwo.length < 2) {
      print("Second largest number not found.");
    } else {
      print("Second largest number using DFS: ${maxTwo[1]}");
    }
  }
}

void main()  {
  Tree obj = Tree();
  obj.insertion(10);
  obj.insertion(20);
  obj.insertion(30);
  obj.insertion(40);
  obj.secondLargestDfs();
}      
