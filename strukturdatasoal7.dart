bool search(List<int> x, int size, int n) {
 if (size > 0) {
 if (x[size - 1] == n) {
 return true;
 } else {
 return search(x, size - 1, n);
 }
 }
 return false;
}

void main() {
  List<int> numbers = [6, 7, 8, 9, 10];
  int valueToFind = 5;

  bool found = search(numbers, numbers.length, valueToFind);

  if (found) {
    print('$valueToFind ditemukan dalam daftar.');
  } else {
    print('$valueToFind tidak ditemukan dalam daftar.');
  }
}

bool find(List<int> x, int size, int n) {
  if (size > 0) {
    if (x[size - 1] == n) {
      return true;
    } else {
      return search(x, size - 1, n);
    }
  }
  return false;
}
