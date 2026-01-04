int add(String number) {
  if(number.isEmpty) {
    return 0;
  }

  String delimiterPattern = r'[,\n]';
  String numberSection = number;

  if (number.startsWith('//')) {
    final lines = number.split('\n');
    delimiterPattern = RegExp.escape(lines[0].substring(2));
    numberSection = lines[1];
  }

  final parts = numberSection.split(RegExp(delimiterPattern));
  final values = parts.map(int.parse).toList();
  final negatives = values.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception(
      'negative numbers not allowed ${negatives.join(',')}',
    );
  }
  return parts.map(int.parse).reduce((a, b) => a + b);
}