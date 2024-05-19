void main() {
  var k = largestLocal([
    [9, 9, 8, 1],
    [5, 6, 2, 6],
    [8, 2, 6, 4],
    [6, 2, 2, 2]
  ]);
}

List<List<int>> largestLocal(List<List<int>> grid) {
  final n = grid.length;
  final maxLocal = List.generate(n - 2, (_) => List<int>.filled(n - 2, 0));

  for (var i = 1; i < n - 1; i++) {
    for (var j = 1; j < n - 1; j++) {
      final subMatrix = [
        grid[i - 1][j - 1],
        grid[i - 1][j],
        grid[i - 1][j + 1],
        grid[i][j - 1],
        grid[i][j],
        grid[i][j + 1],
        grid[i + 1][j - 1],
        grid[i + 1][j],
        grid[i + 1][j + 1]
      ];
      final max = subMatrix
          .reduce((value, element) => value > element ? value : element);
      maxLocal[i - 1][j - 1] = max;
    }
  }

  return maxLocal;
}
