import 'dart:io';

class Node<T> {
  T? value;
  Node? next;

  Node({this.value});
}
class Stack {
  Node? top;

  void push(value) {
    Node newNode = Node(value: value);
    if (top == null) {
      top = newNode;
      return;
    }
    newNode.next = top;
    top = newNode;
  }

  void pop() {
    if (top == null) {
      print('Stack is empty');
      return;
    }
    top = top!.next;
  }

  void display() {
    Node? current = top;
    while (current != null) {
      stdout.write('${current.value}\t');
      if (current.next == null) {
        print('');
      }
      current = current.next;
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(10);
  stack.display();
  stack.pop();
  stack.display();
}
