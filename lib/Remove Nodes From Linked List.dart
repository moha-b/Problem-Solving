void main() {}

ListNode? removeNodes(ListNode? head) {
  var node = head;
  var finalAns = head;

  List<ListNode?> st = [node];
  node = node?.next;

  while (node != null) {
    while (st.isNotEmpty && st.last!.val < node.val) {
      st.removeLast();
    }

    if (st.isEmpty) {
      finalAns = node;
    } else {
      st.last?.next = node;
    }
    st.add(node);
    node = node.next;
  }
  return finalAns;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
