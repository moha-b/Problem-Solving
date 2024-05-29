class Solution {
  int equalSubstring(String s, String t, int maxCost) {
    // Initialize a list to store the absolute differences between the ASCII values of the characters in s and t
    List<int> diff = [];
    final n = s.length;
    // Calculate the absolute differences and add them to the list
    for(int i=0;i<n;i++){
        diff.add((s.codeUnitAt(i)-t.codeUnitAt(i)).abs().toInt());
    }
    // Initialize two pointers and a variable to store the current cost
    int left = 0;
    int right = 0;
    int curr = 0;
    // Initialize a variable to store the maximum length of a substring
    int ans = 0;
    // Iterate over the list
    while(right<n){
        // If the current cost plus the next difference is less than or equal to maxCost
        if(curr + diff[right] <= maxCost){
            // Add the difference to the current cost
            curr+=diff[right];
            // Move the right pointer
            right++;
            // Update the maximum length
            ans=max(ans,right-left);
        }else{
            // Subtract the difference at the left pointer from the current cost
            curr-=diff[left];
            // Move the left pointer
            left++;
        }
    }
    // Return the maximum length
    return ans;
  }
}