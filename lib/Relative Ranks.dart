import 'dart:math';

void main() {
  var k = findRelativeRanks([10, 3, 8, 9, 4]);
  print(k);
}

List<String> findRelativeRanks(List<int> score) {
  var list = List.filled(score.length, '');
  var ranks = ["Gold Medal", "Silver Medal", "Bronze Medal"];
  while (ranks.isNotEmpty) {
    var maxNum = score.reduce((value, element) => max(value, element));
    list[score.indexOf(maxNum)] = ranks[0];
    ranks.removeAt(0);
    score[score.indexOf(maxNum)] = 0;
  }
  for (int i = 0; i < score.length; i++) {
    if (score[i] != 0) {
      list[i] = score[i].toString();
    }
  }

  return list;
}
