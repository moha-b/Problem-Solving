class Solution {
  void reverseString(List<String> s) {
    s.setRange(0, s.length, s.reversed);
  }
}