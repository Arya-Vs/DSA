class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }
    node.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }

    return node.isEndOfWord;
  }

  // bool startsWith(String prefix) {
  //   TrieNode node = root;

  //   for (int i = 0; i < prefix.length; i++) {
  //     String char = prefix[i];
  //     if (!node.children.containsKey(char)) {
  //       return false;
  //     }
  //     node = node.children[char]!;
  //   }

  //   return true;
  // }

  void display() {
    _displayHelper(root, "");
  }

  void _displayHelper(TrieNode node, String prefix) {
    if (node.children.isEmpty) {
      print(prefix);
      return;
    }

    if (node.isEndOfWord) {
      print(prefix);
    }

    for (var entry in node.children.entries) {
      _displayHelper(entry.value, prefix + entry.key);
    }
  }
}

void main() {
  Trie trie = Trie();

  // Insert words into the trie
  trie.insert("apple");
  trie.insert("app");
  trie.insert("banana");

  // Display the Trie
  print("Trie structure:");
  trie.display();

  // Search for words
  print(trie.search("apple"));    // true
  print(trie.search("app"));      // true
  print(trie.search("orange"));   // false
}
