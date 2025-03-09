void main() {
  List<int> data = [2, 5, 8, 10, 14, 32, 35, 41, 67, 88, 90, 101, 109];
  int target = 10;

  int result = binarySearch(data, target, 0, data.length - 1);
  if (result != -1) {
    print('Data $target berada pada indeks ke - $result');
  } else {
    print('Data $target tidak ditemukan');
  }
}

int binarySearch(List<int> arr, int target, int left, int right) {
  if (left > right) {
    return -1; // Target tidak ditemukan
  }

  int mid = left + (right - left) ~/ 2;

  if (arr[mid] == target) {
    return mid; // Target ditemukan
  } else if (arr[mid] > target) {
    return binarySearch(arr, target, left, mid - 1); // Cari di sebelah kiri
  } else {
    return binarySearch(arr, target, mid + 1, right); // Cari di sebelah kanan
  }
}
