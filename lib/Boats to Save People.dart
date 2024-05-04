void main() {
  var k = numRescueBoats([3, 5, 3, 4], 5);
  print(k);
}

int numRescueBoats(List<int> people, int limit) {
  people.sort();
  int first = 0, last = people.length - 1, boats = 0;
  while (first <= last) {
    if (people[first] + people[last] <= limit) {
      first++;
    }
    last--;
    boats++;
  }
  return boats;
}
