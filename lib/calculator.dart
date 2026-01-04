import 'delimeter_parser.dart';
import 'exception.dart';

int add(String number) {
  if(number.isEmpty) {
    return 0;
  }

  final delimiterPattern = DelimiterParser.extractPattern(number);
  final numberSection = DelimiterParser.extractNumberSection(number);

  final values = numberSection
      .split(RegExp(delimiterPattern))
      .map(int.parse)
      .toList();

  final negatives = values.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw NegativeNumbersException(negatives);
  }

  return values
      .where((n) => n <= 1000)
      .fold(0, (sum, n) => sum + n);
}