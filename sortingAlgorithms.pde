int[] arr1 = new int[] {8,3,4,1,6,5,7,0,9,2};
int[] arr2 = new int[] {62,35,98,25,58,93,19,16,34,93,39,67,45,93,26};      // odd
int[] arr3 = new int[] {54,96,94,77,65,42,76,98,23,87,23,98,21,56,53,26};   // even

void setup() {
  exit();
  //printarray(bubbleSort(arr1));
  //printarray(insertionSort(arr1));
  printarray(mergeSort(arr1, 0, arr1.length-1));
}

void printarray(int[] arr) {
  for (int i=0; i<arr.length; ++i) {
    if (i == arr.length-1) {
      println(arr[i]);
    }
    else {
      print(arr[i] + ", ");
    }
  }
}
