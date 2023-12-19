int[] arr1 = new int[] {62,35,98,25,58,93,19,16,34,93,39,67,45,93,26};      // odd
int[] arr2 = new int[] {54,96,94,77,65,42,76,98,23,87,23,98,21,56,53,26};   // even

void setup() {
  exit();
  //printArray(bubbleSort(arr1));
  //printArray(insertionSort(arr1));
}

int[] swapPrev(int[] arr, int i) {
  int prev = arr[i-1];
  arr[i-1] = arr[i];
  arr[i] = prev;
  return arr;
}

int[] swapNext(int[] arr, int i) {
  int next = arr[i+1];
  arr[i+1] = arr[i];
  arr[i] = next;
  return arr;
}
