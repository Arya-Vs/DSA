class TrieNode {
  Map<int, TrieNode> children = {};
  bool isEndOfNumber = false;
}

class Trie {
  TrieNode root = TrieNode();

  void add(int number) {
    TrieNode node = root;
    // Convert the number to a string to process each digit
    String numStr = number.toString();
    for (int i = 0; i < numStr.length; i++) {
      int digit = int.parse(numStr[i]);
      if (!node.children.containsKey(digit)) {
        node.children[digit] = TrieNode();
      }
      node = node.children[digit]!;
    }
    node.isEndOfNumber = true;
  }
  bool search(int number) {
    TrieNode node = root;
    String numStr = number.toString();
    for (int i = 0; i < numStr.length; i++) {
      int digit = int.parse(numStr[i]);

      if (!node.children.containsKey(digit)) {
        return false;
      }
      node = node.children[digit]!;
    }
    return node.isEndOfNumber;
  }

  void display() {
    displayHelper(root, "");
  }

  void displayHelper(TrieNode node, String prefix) {
    if (node.children.isEmpty) {
      print(prefix);
      return;
    }

    if (node.isEndOfNumber) {
      print(prefix);
    }

    for (var entry in node.children.entries) {
      displayHelper(entry.value, prefix + entry.key.toString());
    }
  }
}

void main() {
  Trie obj = Trie();

  obj.add(123);
  obj.add(456);
  obj.add(789);
  obj.add(987);
  obj.display();

  print(obj.search(456)); // Output: true
  print(obj.search(999)); // Output: false
}
