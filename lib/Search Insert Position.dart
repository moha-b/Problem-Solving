void main() {
  var k = searchInsert([3, 6, 7, 8, 10], 5);
  print(k);
}

int searchInsert(List<int> nums, int target) {
  if (nums.contains(target)) {
    return nums.indexOf(target);
  } else {
    int index = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > target) {
        index = i;
        break;
      } else if (nums.last < target) {
        index = nums.length;
      }
    }
    return index;
  }
}
