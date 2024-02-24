import 'package:problem_solving/Two%20Sum.dart';
import 'package:test/test.dart';

void main() {
  test('Test Case 1', () {
    List<int> result = Solution().twoSum([2, 7, 11, 15], 9);
    expect(result, equals([0, 1]));
  });

  test('Test Case 2', () {
    List<int> result = Solution().twoSum([1, 2, 3, 4], 10);
    expect(result, equals([]));
  });

  test('Test Case 3', () {
    List<int> result = Solution().twoSum([3, 2, 4, 7, 5], 6);
    expect(result, equals([1, 2]));
  });

  test('Test Case 4', () {
    List<int> result = Solution().twoSum([], 5);
    expect(result, equals([]));
  });

  test('Test Case 5', () {
    List<int> result = Solution().twoSum([8], 10);
    expect(result, equals([]));
  });

  test('Test Case 6', () {
    List<int> result = Solution().twoSum([3, 2, 4], 6);
    expect(result, equals([1, 2]));
  });
}
