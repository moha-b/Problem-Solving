void main() {
  merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
}

void merge(List<int> nums1, int m, List<int> nums2, int n) {
  while (nums1.length != m) nums1.removeLast();
  nums1.addAll(nums2);
  nums1.sort();
  print(nums1);
}
