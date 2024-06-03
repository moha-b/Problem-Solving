class Solution {
  int appendCharacters(String s, String t) {
    int tPointer = 0;
    for (int sPointer=0;sPointer<s.length && tPointer<t.length;sPointer++){
        if (s[sPointer]==t[tPointer]){
            tPointer++;
        }
    }
    return t.length-tPointer;
  }
}