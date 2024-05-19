import 'dart:math';

void main() {
  var k = matrixScore([
    [0, 0, 1, 1],
    [1, 0, 1, 0],
    [1, 1, 0, 0]
  ]);
  print(k);
}

int matrixScore(List<List<int>> grid) {
  int rowCount = grid.length;
  int colCount = grid[0].length;
  int score = (1 << (colCount - 1)) * rowCount;

  for (int j = 1; j < colCount; j++) {
    int countOfOnes = 0;
    for (int i = 0; i < rowCount; i++) {
      countOfOnes += grid[i][j] ^ grid[i][0];
    }
    score +=
        max(countOfOnes, rowCount - countOfOnes) * (1 << (colCount - j - 1));
  }

  return score;
}
