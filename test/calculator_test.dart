import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('return 0 for empty string', () {
    expect(add(''), 0);
  });

  test('returns number for single input', () {
    expect(add('1'), 1);
  });

  test('return sum of two comma-separated numbers', () {
    expect(add('1,3'), 4);
  });

  test('supports multiple numbers', () {
    expect(add('1,2,3,4,5,6,7,8,9,10'), 55);
  });

  test('supports new lines between numbers', () {
    expect(add('1\n2,3,4\n5'), 15);
  });
}
