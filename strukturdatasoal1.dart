void main() {
  int numRows = 6;  // Menentukan jumlah baris segitiga Pascal
  List<List<int>> triangle = generatePascalTriangle(numRows);
  printPascalTriangle(triangle);
}

List<List<int>> generatePascalTriangle(int rows) {
  List<List<int>> triangle = [];

  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j <= i; j++) {
      // Menghitung nilai dengan rekursi
      row.add(pascalTriangle(i, j));
    }
    triangle.add(row);
  }

  return triangle;
}

int pascalTriangle(int n, int k) {
  // Kondisi dasar: jika k adalah 0 atau k sama dengan n, nilai adalah 1
  if (k == 0 || k == n) {
    return 1;
  }
  // Rekursi: menghitung nilai dengan menjumlahkan dua nilai dari baris sebelumnya
  return pascalTriangle(n - 1, k - 1) + pascalTriangle(n - 1, k);
}

void printPascalTriangle(List<List<int>> triangle) {
  for (int i = 0; i < triangle.length; i++) {
    // Mencetak label F1, F2, dst.
    print('F${i + 1}: ${triangle[i].join(' ')}');
  }
}
