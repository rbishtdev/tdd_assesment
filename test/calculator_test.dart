import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('return 0 for empty string', () {
    expect(add(''), 0);
  });
}
