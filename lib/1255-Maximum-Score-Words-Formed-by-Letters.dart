class Solution {
int maxScoreWords(List<String> words, List<String> letters, List<int> score) {
  Map<String, int> letterCount = {};
  for (var letter in letters) {
    if (!letterCount.containsKey(letter)) {
      letterCount[letter] = 0;
    }
    letterCount[letter] = letterCount[letter]! + 1;
  }

  List<int> wordScores = words.map((word) {
    int wordScore = 0;
    for (var ch in word.split('')) {
      wordScore += score[ch.codeUnitAt(0) - 'a'.codeUnitAt(0)];
    }
    return wordScore;
  }).toList();

  int backtrack(int index, Map<String, int> letterCount) {
    if (index == words.length) {
      return 0;
    }

    // Option 1: Skip the current word
    int maxScore = backtrack(index + 1, letterCount);

    // Option 2: Try to use the current word if possible
    Map<String, int> newLetterCount = Map.from(letterCount);
    bool canUseWord = true;
    for (var ch in words[index].split('')) {
      if (!newLetterCount.containsKey(ch) || newLetterCount[ch]! == 0) {
        canUseWord = false;
        break;
      }
      newLetterCount[ch] = newLetterCount[ch]! - 1;
    }

    if (canUseWord) {
      int currentWordScore = wordScores[index];
      int scoreWithCurrentWord = currentWordScore + backtrack(index + 1, newLetterCount);
      maxScore = max(maxScore, scoreWithCurrentWord);
    }

    return maxScore;
  }

  return backtrack(0, letterCount);
}
}