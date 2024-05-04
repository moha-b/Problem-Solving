void main() {
  var k = plusOne([
    7,
    2,
    8,
    5,
    0,
    9,
    1,
    2,
    9,
    5,
    3,
    6,
    6,
    7,
    3,
    2,
    8,
    4,
    3,
    7,
    9,
    5,
    7,
    7,
    4,
    7,
    4,
    9,
    4,
    7,
    0,
    1,
    1,
    1,
    7,
    4,
    0,
    0,
    6
  ]);
  print(k);
}

List<int> plusOne(List<int> digits) {
  var value = (BigInt.parse(digits.join())) + BigInt.one;
  return value.toString().split('').map((e) => int.parse(e)).toList();
}
