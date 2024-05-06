void main() {
  var k = addBinary("11", "1");
  print(k);
}

String addBinary(String a, String b) {
  return (BigInt.parse(a, radix: 2) + BigInt.parse(b, radix: 2))
      .toRadixString(2);
}
