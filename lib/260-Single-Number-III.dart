class Solution {
  List<int> singleNumber(List<int> nums) {
    Set<int> list = {};
    nums.forEach((n){
        if(list.contains(n)) list.remove(n);
        else list.add(n);
    });
    return list.toList();
  }
}