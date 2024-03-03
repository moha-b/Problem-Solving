void main() {
  print(romanToInt('III'));
}

var reference = {
  "I": 1,
  "V": 5,
  "X": 10,
  "L": 50,
  "C": 100,
  "D": 500,
  "M": 1000,
};
int romanToInt(String roman) {
  var calculate = 0;
  var previous = 0;
  roman.split('').forEach(
    (romanNumber) {
      if (previous < reference[romanNumber]!) {
        calculate += reference[romanNumber]! - (2 * previous);
      } else {
        calculate += reference[romanNumber]!;
      }
      previous = reference[romanNumber]!;
    },
  );
  return calculate;
}
