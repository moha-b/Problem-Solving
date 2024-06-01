class Solution {
  int scoreOfString(String s) {
  int sum = 0;
  for (int i = 0; i < s.length - 1; i++) {
    sum += (s.codeUnitAt(i) - s.codeUnitAt(i + 1)).abs();
  }
  return sum;
}
}