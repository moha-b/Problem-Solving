class Solution {
  String replaceWords(List<String> dictionary, String sentence) {
    String res = '';
    List<String> words = sentence.split(' ');
    for(var char in dictionary){
       for(int i = 0 ; i < words.length ; i++){
           if(words[i].startsWith(char)){
            words[i] = char;
           }
       }
    }
    return words.join(' ');
  }
}