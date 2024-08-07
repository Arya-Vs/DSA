void main() {
  List<String> strings = ['banana', 'apple', 'orange', 'grape', 'kiwi'];

  // Sorting the strings using merge sort
  mergeSort(strings, 0, strings.length - 1);

  // Printing the sorted strings
  print('Sorted strings: $strings');
}

void mergeSort(List<String> arr, int left, int right) {
  if (left < right) {
    int mid = (left + right) ~/ 2;

    // Sort the first and second halves
    mergeSort(arr, left, mid);
    mergeSort(arr, mid + 1, right);

    // Merge the sorted halves
    merge(arr, left, mid, right);
  }
}

void merge(List<String> arr, int left, int mid, int right) {
  int n1 = mid - left + 1;
  int n2 = right - mid;

  // Create temporary arrays
  List<String> L = List<String>.filled(n1, '');
  List<String> R = List<String>.filled(n2, '');

  // Copy data to temporary arrays L[] and R[]
  for (int i = 0; i < n1; i++) {
    L[i] = arr[left + i];
  }
  for (int j = 0; j < n2; j++) {
    R[j] = arr[mid + 1 + j];
  }

  // Merge the temporary arrays back into arr[l..r]
  int i = 0, j = 0, k = left;
  while (i < n1 && j < n2) {
    if (L[i].compareTo(R[j]) <= 0) {
      arr[k] = L[i];
      i++;
    } else {
      arr[k] = R[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of L[], if any
  while (i < n1) {
    arr[k] = L[i];
    i++;
    k++;
  }

  // Copy the remaining elements of R[], if any
  while (j < n2) {
    arr[k] = R[j];
    j++;
    k++;
  }
}