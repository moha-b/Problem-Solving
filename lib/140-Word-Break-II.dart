class Solution {
  List<String> wordBreak(String s, List<String> wordDict) {
    // Initialize an empty list to store the possible sentences
    List<String> ans = [];
    // Convert the word dictionary to a set for faster lookup
    final dict = wordDict.toSet();

    // Define a recursive function (DFS) to construct the possible sentences
    void dfs(int idx, String word) {
      // If we have considered all characters in the string
      if (idx == s.length) {
        // If the current word is not empty, add it to the list of possible sentences
        if (word.isNotEmpty) ans.add(word);
        return;
      }
      // Try to form a word with the remaining characters in the string
      for (int i = idx + 1; i <= s.length; i++) {
        // Get the current word
        final w = s.substring(idx, i);
        // If the current word is in the dictionary
        if (dict.contains(w)) {
          // If the current word is the first word in the sentence, move to the next character without adding a space
          if (word == "") dfs(i, w);
          // Otherwise, add a space before the current word and move to the next character
          else dfs(i, word + " " + w);
        }
      }
    }
    // Start constructing the possible sentences from the first character
    dfs(0, "");
    // Return the list of possible sentences
    return ans;
  }
}