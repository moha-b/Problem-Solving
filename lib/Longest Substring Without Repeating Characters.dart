import 'dart:math';

void main() {
  var k = lengthOfLongestSubstring("abcabcbb");
  print(k);
}

int lengthOfLongestSubstring(String s) {
  int maxLength = 0;
  int start = 0;
  Map<String, int> map = {};
  for (int i = 0; i < s.length; i++) {
    if (map.containsKey(s[i])) {
      start = max(map[s[i]]!, start);
    }
    maxLength = max(maxLength, i - start + 1);
    map[s[i]] = i + 1;
  }
  return maxLength;
}
