class Solution {
  int beautifulSubsets(List<int> nums, int k) {
    int n = nums.length;
    int totalSubsets = 1 << n; // 2^n subsets
    int count = 0;

    for (int mask = 1; mask < totalSubsets; mask++) {
      bool isBeautiful = true;
      for (int i = 0; i < n; i++) {
        if ((mask & (1 << i)) != 0) {
          for (int j = i + 1; j < n; j++) {
            if ((mask & (1 << j)) != 0 && (nums[i] - nums[j]).abs() == k) {
              isBeautiful = false;
              break;
            }
          }
        }
        if (!isBeautiful) break;
      }
      if (isBeautiful) count++;
    }

    return count;
  }
}