void main() {
  var k = kthSmallestPrimeFraction([], 2);
  print(k);
}

List<int> kthSmallestPrimeFraction(List<int> arr, int k) {
  List<List<int>> fractions = [];
  for (var i = 0; i < arr.length - 1; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      fractions.add([arr[i], arr[j]]);
    }
  }
  fractions.sort((a, b) => (a[0] / a[1]).compareTo(b[0] / b[1]));
  return fractions[k - 1];
}
