/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
   final _res = <int>[];

  List<int> inorderTraversal(TreeNode? root) {
    if (root == null) {
        return _res;
    }


    inorderTraversal(root.left)..add(root.val);
    inorderTraversal(root.right);
    return _res;
  }
}