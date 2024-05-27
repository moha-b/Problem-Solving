class Solution {
  int specialArray(List<int> nums) {
    // Sort the array in descending order
    nums.sort((a,b)=>b.compareTo(a));
    final n = nums.length;
    // Find the minimum between the first element and the length of the array
    final minX = min(nums.first,n);
    // Initialize the dynamic programming array
    List<int> dp = List.filled(minX+2,0);
    int k=0;
    // Iterate from `minX` to 0
    for(int i=minX;i>=0;i--){
        // Copy the value from the next index
        dp[i]=dp[i+1];
        // While the current number is greater than or equal to i
        while(k<nums.length && nums[k]>=i){
            // Increase the count
            dp[i]++;
            k++;
        }
        // If the count equals i, return i
        if(dp[i]==i) return i;
    }
    // If no number fits the criteria, return -1
    return -1;
  }
}