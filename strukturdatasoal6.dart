int test(String s, int last) {
  if (last < 0) {
    return 0; // Kondisi dasar: jika last kurang dari 0, kembalikan 0
  }
  if (s[last] == "0") {
    return 2 * test(s, last - 1); // Jika karakter saat ini adalah '0'
  }
  return 1 + 2 * test(s, last - 1); // Jika karakter saat ini adalah '1'
}

void main() {
  String input = "01101";
  int result = test(input, 4); // Memanggil dengan indeks terakhir 4
  print('Hasil: $result');
}
