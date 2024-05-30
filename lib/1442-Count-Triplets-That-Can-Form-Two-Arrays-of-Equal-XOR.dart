class Solution {
  int countTriplets(List<int> arr) {
    int size = arr.length, count = 0, prefix = 0;
    final countMap = <int, int>{0: 1}, totalMap = <int, int>{};
    for (int i = 0; i < size; i++) {
      prefix ^= arr[i];
      count += (countMap[prefix] ?? 0) * i - (totalMap[prefix] ?? 0);
      totalMap[prefix] = (totalMap[prefix] ?? 0) + i + 1;
      countMap[prefix] = (countMap[prefix] ?? 0) + 1;
    }
    return count;
  }
}