class Node {
  int data;
  Node? next;
  
  Node(this.data);
}
class LinkedList {
  Node? head;
  // Method to add a node at the end of the list
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newNode;
    }
  }
  // Method to display the nodes in the list
  void display() {
    Node? temp = head;
    if (temp == null) {
      print("List is empty.");
      return;
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
  // Method to delete a node with the given data
  void delete(int data) {
    Node? temp = head;
    Node? prev;
    // If the head node itself holds the data to be deleted
    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }
    // Search for the node to be deleted
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }

    // If the data was not found in the list
    if (temp == null) {
      return;
    }

    // Unlink the node from the list
    prev!.next = temp.next;
  }

  // Method to insert a new node after a specific node with given data
  void insertAfter(int nextTo, int data) {
    Node newNode = Node(data);
    Node? temp = head;

    // Traverse the list to find the node with data == nextTo
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }

    // If the node is found, insert the new node after it
    if (temp != null) {
      newNode.next = temp.next;
      temp.next = newNode;
    }
  }
}

void main() {
  LinkedList list = LinkedList();

  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.display();  // Output: 10 20 30

  list.delete(20);
  list.display();  // Output:
}