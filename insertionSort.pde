int[] insertionSort(int[] arr) {
  for (int i=1; i<arr.length; ++i) {
    int curr = i;
    while (curr>0 && arr[curr]<arr[curr-1]) {
      arr = swapPrev(arr, curr);
      curr--;
    }
  }
  return arr;
}


int[] swapPrev(int[] arr, int i) {
  int prev = arr[i-1];
  arr[i-1] = arr[i];
  arr[i] = prev;
  return arr;
}
