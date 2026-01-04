class DelimiterParser {
  static const String defaultPattern = r'[,\n]';

  static String extractPattern(String input) {
    if (!input.startsWith('//')) {
      return defaultPattern;
    }

    final delimiterLine = input.split('\n').first;

    if (delimiterLine.startsWith('//[')) {
      return RegExp.escape(
        delimiterLine.substring(3, delimiterLine.length - 1),
      );
    }

    return RegExp.escape(delimiterLine.substring(2));
  }

  static String extractNumberSection(String input) {
    return input.startsWith('//')
        ? input.split('\n')[1]
        : input;
  }
}
