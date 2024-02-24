void main(List<String> arguments) {
  print('Hello world!');
  Solution().twoSum([3, 2, 4], 6);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numIndexes = {};
    for (int i = 0; i < nums.length; i++) {
      var remains = target - nums[i];
      if (numIndexes.containsKey(remains)) {
        var indexes = [numIndexes[remains]!, i];
        return indexes;
      }
      numIndexes[nums[i]] = i;
    }

    return [];
  }
}
