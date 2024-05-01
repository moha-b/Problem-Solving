import 'package:problem_solving/Valid%20Parentheses.dart';
import 'package:test/test.dart';

void main() {
  //
  test('Test Case 1', () {
    var result = isValid("()");
    expect(result, equals(true));
  });

  test('Test Case 2', () {
    var result = isValid('()[]{}');
    expect(result, equals(true));
  });

  test('Test Case 3', () {
    var result = isValid('(]');
    expect(result, equals(false));
  });
}
