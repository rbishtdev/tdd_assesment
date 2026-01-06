import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  test('return 0 for empty string', () {
    expect(calculator.add(''), 0);
  });

  test('returns number for single input', () {
    expect(calculator.add('1'), 1);
  });

  test('return sum of two comma-separated numbers', () {
    expect(calculator.add('1,3'), 4);
  });

  test('supports multiple numbers', () {
    expect(calculator.add('1,2,3,4,5,6,7,8,9,10'), 55);
  });

  test('supports new lines between numbers', () {
    expect(calculator.add('1\n2,3,4\n5'), 15);
  });

  test('supports different delimiter', () {
    expect(calculator.add('//;\n1;2;5'), 8);
  });

  test('negative number will throw an exception', () {
    expect(
          () => calculator.add('1,-2,3'),
      throwsA(
        predicate((e) =>
            e.toString().contains('negative numbers not allowed -2')),
      ),
    );
  });

  test('ignores numbers greater than 1000', () {
    expect(calculator.add('2,3, 1001, 1000'), 1005);
  });

  test('supports delimiters of any length', () {
    expect(calculator.add('//[***]\n1***5***4'), 10);
  });
}
