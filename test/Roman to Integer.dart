import 'package:problem_solving/Roman%20to%20Integer.dart';
import 'package:test/test.dart';

void main() {
  test('Test Case 1', () {
    var result = romanToInt('III');
    expect(result, equals(3));
  });

  test('Test Case 2', () {
    var result = romanToInt('IV');
    expect(result, equals(4));
  });

  test('Test Case 3', () {
    var result = romanToInt('LVIII');
    expect(result, equals(58));
  });

  test('Test Case 4', () {
    var result = romanToInt('MCMXCIV');
    expect(result, equals(1994));
  });
}
