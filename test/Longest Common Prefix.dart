import 'package:problem_solving/Longest%20Common%20Prefix.dart';
import 'package:test/test.dart';

void main() {
  //
  test('Test Case 1', () {
    var result = longestCommonPrefix(["flower", "flow", "flight"]);
    expect(result, equals('fl'));
  });

  test('Test Case 2', () {
    var result = longestCommonPrefix(["dog", "racecar", "car"]);
    expect(result, equals(''));
  });
}
