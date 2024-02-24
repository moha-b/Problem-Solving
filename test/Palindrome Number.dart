import 'package:problem_solving/Palindrome%20Number.dart';
import 'package:test/test.dart';

void main() {
  test('Test Case 1', () {
    bool result = Solution().isPalindrome(121);
    print(result);
    expect(result, equals(true));
  });

  test('Test Case 2', () {
    bool result = Solution().isPalindrome(-121);
    expect(result, equals(false));
  });

  test('Test Case 3', () {
    bool result = Solution().isPalindrome(10);
    expect(result, equals(false));
  });
}
