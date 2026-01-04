int add(String number) {
  if(number.isEmpty) {
    return 0;
  }

  final parts = number.split(',');
  return parts.map(int.parse).reduce((a, b) => a + b);
}