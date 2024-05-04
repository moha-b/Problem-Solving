void main() {
  var k = lengthOfLastWord("   fly me   to   the moon  ");
  print(k);
}

int lengthOfLastWord(String s) {
  return s.trim().split(' ').last.length;
}
