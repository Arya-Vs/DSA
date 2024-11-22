Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Emit value to the stream
  }
}

void main() async {
  print('Counting...');
  await for (int count in countStream()) {
    print('Count: $count');
  }
}
