void main() {
  isValid("()");
}

bool isValid(String s) {
  const openParentheses = ['(', '{', '['];
  const closeParentheses = [')', '}', ']'];
  Stack stack = Stack<String>();

  for (var char in s.split('')) {
    if (openParentheses.contains(char)) {
      stack.push(char);
    } else if (closeParentheses.contains(char)) {
      if (stack.isEmpty ||
          openParentheses.indexOf(stack.peek()) !=
              closeParentheses.indexOf(char)) {
        return false;
      }
      stack.pop();
    }
  }

  return stack.isEmpty;
}

class Stack<T> {
  List<T> _stack = [];

  void push(T item) {
    _stack.add(item);
  }

  T pop() {
    if (isEmpty) {
      throw Exception('Stack is empty');
    }
    return _stack.removeLast();
  }

  T peek() {
    if (isEmpty) {
      throw Exception('Stack is empty');
    }
    return _stack.last;
  }

  bool get isEmpty => _stack.isEmpty;
}