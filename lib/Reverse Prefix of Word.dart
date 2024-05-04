void main() {
  var word = reversePrefix("abcdefd", "d");
  print(word);
}

String reversePrefix(String word, String ch) {
  int reversIndex = word.indexOf(ch) + 1;
  var reversed = word.substring(0, reversIndex).split('').reversed.join('');
  reversed += word.substring(reversIndex);
  return reversed;
}
