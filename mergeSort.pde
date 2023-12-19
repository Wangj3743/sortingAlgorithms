int[] mergeSort(int[] arr, int start, int end) {
  if (start == end) {
    return new int[] {arr[start]};
  } else {
    int mid = (start+end)/2;
    int[] left = mergeSort(arr, start, mid);
    int[] right = mergeSort(arr, mid+1, end);
    return merge(left, right);
  }
}


int[] merge(int[] a, int[] b) {
  int size = a.length + b.length;
  int[] c = new int[size];
  int curr = 0;
  int i = 0;
  int j = 0;
  
  // comparisons
  while (i != a.length && j != b.length) {
    if (a[i] < b[j]) {
      c[curr] = a[i];
      i++;
    } else {
      c[curr] = b[j];
      j++;
    }
    curr++;
  }
  
  // free rides
  if (i == a.length) {  // if arr a is finished
    for (int k = j; k<b.length; ++k) {
      c[curr] = b[k];
      curr++;
    }
  } else {  // if arr b is finished
    for (int l = i; l<a.length; ++l) {
      c[curr] = a[l];
      curr++;
    }
  }
  
  return c;
}
