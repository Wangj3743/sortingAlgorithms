int[] selectionSort(int[] arr) {
  int[] arr2 = new int[arr.length];

  for (int startIndex=0; startIndex<arr.length; ++startIndex) {
    int currMinValue = arr[startIndex];
    int currMinIndex = startIndex;

    for (int i=startIndex; i<arr.length; ++i) {
      if (arr[i] < currMinValue) {
        currMinValue = arr[i];
        currMinIndex = i;
      }
    }
    arr2[startIndex] = currMinValue;
    arr2 = swap(arr, startIndex, currMinIndex);
  }
  return arr2;
}


int[] swap(int[] arr, int start, int min) {
  int temp = arr[min]; // min index
  arr[min] = arr[start];
  arr[start] = temp;
  
  return arr;
}
