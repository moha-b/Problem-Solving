void main() {
  var k = climbStairs(3);
  print(k);
}

int climbStairs(int n) {
  int a = 1, b = 1;
  while (n-- > 0) {
    a = (b += a) - a;
  }
  return a;
}
