void main() {
  Solution().isPalindrome(121);
}

class Solution {
  bool isPalindrome(int x) {
    if (x.toString().split('').reversed.join('') == x.toString()) {
      return true;
    }
    return false;
  }
}
