void main() {
  longestCommonPrefix(["flower", "flow", "flight"]);
}

String longestCommonPrefix(List<String> listOfWords) {
  String commonPrefix = listOfWords.first;
  for (final word in listOfWords) {
    while (!word.startsWith(commonPrefix)) {
      commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
    }
    if (commonPrefix.isEmpty) {
      return "";
    }
  }
  return commonPrefix;
}
// String longestCommonPrefix(List<String> strs) {
//   var common = '';
//   return strs.reduce((previousValue, element) {
//     element.toLowerCase().split('').forEach((element) {
//       if (previousValue.contains(element) && !common.contains(element)) {
//         common += element;
//         print(common);
//       } else if (common.contains(element)) {
//         common.replaceAll(element, '');
//       }
//     });
//     return common;
//   });
// }
