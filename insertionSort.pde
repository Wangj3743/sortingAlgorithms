int[] insertionSort(int[] arr) {
  for (int i=0; i<arr.length; ++i) {
    int curr = i;
    while (curr>0 && arr[curr]<arr[curr-1]) {
      arr = swapPrev(arr, curr);
      curr--;
    }
  }
  return arr;
}
