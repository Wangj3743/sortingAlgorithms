int[] bubbleSort(int[] arr) {
  for (int i=1; i<=arr.length-1; ++i) {
    for (int j=0; j<=arr.length-i-1; ++j) {
      if (arr[j] > arr[j+1]) {
        arr = swapNext(arr, j);
      }
    }
  }
  return arr;
}


int[] swapNext(int[] arr, int i) {
  int next = arr[i+1];
  arr[i+1] = arr[i];
  arr[i] = next;
  return arr;
}
