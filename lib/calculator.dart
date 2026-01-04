import 'exception.dart';

int add(String number) {
  if(number.isEmpty) {
    return 0;
  }

  String delimiterPattern = r'[,\n]';
  String numberSection = number;

  if (number.startsWith('//')) {
    final lines = number.split('\n');
    final delimiterLine = lines[0];

    if (delimiterLine.startsWith('//[')) {
      delimiterPattern = RegExp.escape(
        delimiterLine.substring(3, delimiterLine.length - 1),
      );
    } else {
      delimiterPattern = RegExp.escape(delimiterLine.substring(2));
    }

    numberSection = lines[1];
  }

  final parts = numberSection.split(RegExp(delimiterPattern));
  final values = parts.map(int.parse).toList();
  final negatives = values.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw NegativeNumbersException(negatives);
  }
  return parts
         .map(int.parse)
         .where((n) => n <= 1000)
         .reduce((a, b) => a + b);
}