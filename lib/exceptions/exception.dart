class NegativeNumbersException implements Exception {
  final List<int> negatives;

  NegativeNumbersException(this.negatives);

  @override
  String toString() {
    return 'negative numbers not allowed ${negatives.join(',')}';
  }
}