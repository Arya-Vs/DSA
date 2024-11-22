class MaxHeap{
  List<int> heap = [];

  void insert(int value){
    heap.add(value);
    heapifyUp(heap.length - 1);
  }

  void heapifyUp(int index){
    while(index > 0){
      int parent = (index - 1) ~/ 2;
      if(heap[index] > heap[parent]){
        swap(index, parent);
        index = parent;
      } else {
        break;
      }
    }
  }

  void swap(int i, int j){
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  @override
  String toString(){
    return heap.toString();
  }
}

void main(){
  MaxHeap heap = MaxHeap();
  heap.insert(1);
  heap.insert(2);
  heap.insert(3);
  heap.insert(4);
  print(heap);
}
