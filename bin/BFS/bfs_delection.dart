import 'dart:collection';

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

  void bfs() {
    if (root == null) return;

    Queue<Node?> queue = Queue<Node?>();
    queue.add(root);

    print("BFS Traversal:");
    while (queue.isNotEmpty) {
      Node? current = queue.removeFirst();
      print(current!.data);

      if (current.left != null) {
        queue.add(current.left);
      }

      if (current.right != null) {
        queue.add(current.right);
      }
    }
  }

  Node? findDeepestNode(Node? root) {
    if (root == null) return null;

    Queue<Node?> queue = Queue<Node?>();
    queue.add(root);
    Node? deepest;

    while (queue.isNotEmpty) {
      deepest = queue.removeFirst();

      if (deepest!.left != null) queue.add(deepest.left);
      if (deepest.right != null) queue.add(deepest.right);
    }

    return deepest;
  }

  void delete(int data) {
    Node? deepest = findDeepestNode(root);
    Node? nodeToDelete;
    Node? parent;

    // Find the node to delete and its parent
    Queue<Node?> queue = Queue<Node?>();
    queue.add(root);
    while (queue.isNotEmpty) {
      parent = queue.removeFirst();
      if (parent!.left != null && parent.left!.data == data) {
        nodeToDelete = parent.left;
        break;
      } else if (parent.right != null && parent.right!.data == data) {
        nodeToDelete = parent.right;
        break;
      }
      if (parent.left != null) queue.add(parent.left);
      if (parent.right != null) queue.add(parent.right);
    }

    // If node to delete not found, return
    if (nodeToDelete == null) return;

    // Swap data with deepest node
    int temp = nodeToDelete.data;
    nodeToDelete.data = deepest!.data;
    deepest.data = temp;

    // Remove the deepest node
    if (parent!.left == deepest) {
      parent.left = null;
    } else {
      parent.right = null;
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

  print("Before deletion:");
  wroom.bfs();
  print("");

  wroom.delete(30); // Deleting node with data 30

  print("After deletion:");
  wroom.bfs();
}
