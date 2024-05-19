class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main() {
  deleteDuplicates(ListNode());
}

ListNode? deleteDuplicates(ListNode? head) {
  while (head != null && head.next != null) {
    if (head.val == head.next!.val) {
      ListNode? remove = head.next;
      head.next = remove?.next;
      remove = null;
    } else {
      head = head.next;
    }
  }
  return head;
}
