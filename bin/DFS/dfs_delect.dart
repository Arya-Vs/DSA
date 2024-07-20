class Node {
  int data;
  Node? left;
  Node? right;
  
  Node(this.data);
}

class Treee {
  Node? root;

  void insert(int data) {
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

  Node? _findMin(Node? node) {
    Node? current = node;
    while (current != null && current.left != null) {
      current = current.left;
    }
    return current;
  }

  Node? _deleteNode(Node? root, int data) {
    if (root == null) return root;

    if (data < root.data) {
      root.left = _deleteNode(root.left, data);
    } else if (data > root.data) {
      root.right = _deleteNode(root.right, data);
    } else {
      if (root.left == null) return root.right;
      else if (root.right == null) return root.left;

      // Node with two children: Get the inorder successor (smallest in the right subtree)
      Node? temp = _findMin(root.right);

      // Copy the inorder successor's content to this node
      root.data = temp!.data;

      // Delete the inorder successor
      root.right = _deleteNode(root.right, temp.data);
    }
    return root;
  }

  void delete(int data) {
    root = _deleteNode(root, data);
  }

  void _dfsTraversal(Node? node) {
    if (node == null) return;

    print(node.data);
    _dfsTraversal(node.left);
    _dfsTraversal(node.right);
  }

  void dfs() {
    print("DFS Traversal:");
    _dfsTraversal(root);
  }
}

void main(List<String> args) {
  Treee obj = Treee();
  obj.insert(10);
  obj.insert(20);
  obj.insert(30);
  obj.insert(40);
  obj.insert(50);
  obj.dfs();

  obj.delete(20); // Deleting node with data 20
  obj.dfs();
}
