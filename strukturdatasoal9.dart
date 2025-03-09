void main() {
  // Contoh penggunaan
  for (int n = 0; n <= 10; n++) {
    print('f($n) = ${f(n)}');
  }
}

int f(int n) {
  if (n == 0) return 0;  // Basis: n = 0
  if (n == 1) return 1;  // Basis: n = 1
  if (n == 2) return 1;  // Basis: n = 2
  return 2 * f(n - 2) + f(n - 3); // Rekursi untuk n > 2
}
