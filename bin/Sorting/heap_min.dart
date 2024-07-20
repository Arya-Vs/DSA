void main() {
  List<int> array = [3, 2, 5, 6, 1, 4];
  minHeapify(array);
  print(array);
}

void minHeapify(List<int> array) {
  int n = array.length;
  
  // Build min heap
  for (int i = (n ~/ 2) - 1; i >= 0; i--) {
    heapify(array, n, i);
  }
}

void heapify(List<int> array, int n, int i) {
  int smallest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;
  
  if (left < n && array[left] < array[smallest]) {
    smallest = left;
  }
  
  if (right < n && array[right] < array[smallest]) {
    smallest = right;
  }
  
  if (smallest != i) {
    int temp = array[i];
    array[i] = array[smallest];
    array[smallest] = temp;
    
    heapify(array, n, smallest);
  }
}
