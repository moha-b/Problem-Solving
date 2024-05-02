void main() {
  var nums1 = [1, 1, 2];
  var nums2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  var k = removeDuplicates(nums2);
  print(k);
}

int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;
  //
  int uniqueIndex = 0;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[uniqueIndex]) {
      uniqueIndex++;
      nums[uniqueIndex] = nums[i];
    }
  }

  return uniqueIndex + 1;
}
