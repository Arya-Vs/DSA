class Node {
  int data;
  Node? right;
  Node? left;
  Node(this.data);
}

class Tree {
  Node? root;

  void add(int data) {
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
  int getHeight(Node? node) {
    if (node == null) {
      return -1; // Height of an empty tree is -1
    }
    int leftHeight = getHeight(node.left);
    int rightHeight = getHeight(node.right);

    // Height of a node is the maximum height of its children plus 1
    return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
  }

  int calculateHeight() {
    return getHeight(root);
  }
}

void main() {
  Tree tree = Tree();
  tree.add(5);
  tree.add(3);
  tree.add(7);
  tree.add(2);
  tree.add(4);
  tree.add(6);
  tree.add(8);

  print("Height of the tree: ${tree.calculateHeight()}"); // Output the height of the tree
}
