void main() {
  var k = strStr("mississippi", "issip");
  print(k);
}

int strStr(String haystack, String needle) {
  return haystack.contains(needle) ? haystack.indexOf(needle) : -1;
}
