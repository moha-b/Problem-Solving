import 'package:problem_solving/Merge%20Two%20Sorted%20Lists.dart';
import 'package:test/test.dart';

void main() {
  //
  test('Test Case 1', () {
    ListNode list1 = ListNode();
    ListNode list2 = ListNode();
    var result = mergeTwoLists(list1, list2);
    expect(result, equals(true));
  });
}
