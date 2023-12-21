int[] selectionSort(int[] arr) {
  for (int startIndex=0; startIndex<arr.length; ++startIndex) {
    int currMinValue = arr[startIndex];
    int currMinIndex = startIndex;

    for (int i=startIndex; i<arr.length; ++i) {
      if (arr[i] < currMinValue) {
        currMinValue = arr[i];
        currMinIndex = i;
      }
    }
    arr = swap(arr, startIndex, currMinIndex);
  }
  return arr;
}


int[] swap(int[] arr, int start, int min) {
  int temp = arr[min]; // min index
  arr[min] = arr[start];
  arr[start] = temp;
  
  return arr;
}
