int add(String number) {
  if(number.isEmpty) {
    return 0;
  }

  final parts = number.split(',');
  if (parts.length == 1) {
    return int.parse(parts[0]);
  }

  return int.parse(parts[0]) + int.parse(parts[1]);
}