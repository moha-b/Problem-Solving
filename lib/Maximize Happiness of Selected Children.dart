void main() {
  var k = maximumHappinessSum([1, 2, 3], 2);
  print(k);
}

int maximumHappinessSum(List<int> happiness, int k) {
  happiness.sort();
  int sum = 0;
  for (int i = 0; i < k; i++) {
    sum += happiness.removeAt(happiness.length - 1);
    for (int j = 0; j < happiness.length; j++) {
      happiness[j] = (happiness[j] - 1) <= 0 ? 0 : happiness[j] - 1;
    }
  }
  return sum;
}
