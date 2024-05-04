void main() {
  removeElement([3, 2, 2, 3], 3);
}

int removeElement(List<int> nums, int val) {
  int unique = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != val) {
      nums[unique] = nums[i];
      unique++;
    }
  }
  print(nums);
  return unique;
}
