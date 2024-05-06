void main() {
  var k = mySqrt(4);
  print(k);
}

int mySqrt(int num) {
  if (num <= 0) return 0;

  double guess = num / 2.0;
  while (true) {
    double newGuess = (guess + num / guess) / 2.0;
    if ((newGuess - guess).abs() < 0.000001) {
      return newGuess.toInt();
    }
    guess = newGuess;
  }
}
