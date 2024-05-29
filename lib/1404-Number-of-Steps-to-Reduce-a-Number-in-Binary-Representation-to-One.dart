class Solution {
  int numSteps(String s) {
    // Initialize a counter for the number of steps
    int ans = 0;
    // Convert the string to a list of characters
    List<String> list = s.split('');
    // While the list has more than one element
    while(list.length>1){
        // If the last element is '0', it means the number is even
        if(list.last == '0') {
            // Remove the last element, which is equivalent to dividing the number by 2
            list.removeLast();
        } else {
            // If the last element is '1', it means the number is odd
            bool found = false;
            // Iterate over the list from right to left
            for(int i=list.length-1;i>=0;i--){
                // If the current element is '0'
                if(list[i]=='0'){
                    // Change it to '1', which is equivalent to adding 1 to the number
                    list[i]='1';
                    found=true;
                    break;
                }
                // If the current element is '1', change it to '0'
                list[i]='0';
            }
            // If no '0' was found, it means the number was a sequence of '1's
            if(!found) {
                // Insert a '1' at the beginning of the list, which is equivalent to adding 1 to the number
                list.insert(0,'1');
            }
        }
        // Increment the counter
        ans++;
    }
    // Return the number of steps
    return ans;
  }
}