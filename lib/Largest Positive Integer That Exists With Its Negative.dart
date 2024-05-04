void main() {
  var k = findMaxK([14, 33, 40, -33, 8, -24, -42, 30, -18, -34]);
  print(k);
}

int findMaxK(List<int> nums) {
  nums.sort();
  for (int i = nums.length - 1; i >= 0; i--) {
    if (nums[i] > 0 && nums.contains(-nums[i])) {
      return nums[i];
    }
  }
  return -1;
}
