int add(String number) {
  if (number.isEmpty) {
    return 0;
  }

  final delimiterPattern = extractPattern(number);
  final numberSection = extractNumberSection(number);

  final values = numberSection
      .split(RegExp(delimiterPattern))
      .map(int.parse)
      .toList();

  final negatives = values.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception('negative numbers not allowed ${negatives.join(',')}');
  }

  return values.where((n) => n <= 1000).fold(0, (sum, n) => sum + n);
}

const String defaultPattern = r'[,\n]';

String extractPattern(String input) {
  if (!input.startsWith('//')) {
    return defaultPattern;
  }

  final delimiterLine = input.split('\n').first;

  if (delimiterLine.startsWith('//[')) {
    return RegExp.escape(delimiterLine.substring(3, delimiterLine.length - 1));
  }

  return RegExp.escape(delimiterLine.substring(2));
}

String extractNumberSection(String input) {
  return input.startsWith('//') ? input.split('\n')[1] : input;
}