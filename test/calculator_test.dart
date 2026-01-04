import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('return 0 for empty string', () {
    expect(add(''), 0);
  });

  test('returns number for single input', () {
    expect(add('1'), 1);
  });
}
