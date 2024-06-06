class Solution {
  bool isNStraightHand(List<int> hand, int groupSize) {
    if (hand.length % groupSize != 0) {
      return false; // The total number of cards must be divisible by groupSize
    }
    
    Map<int, int> countMap = {};
    
    // Count the occurrences of each card
    for (int card in hand) {
      countMap.update(card, (value) => value + 1, ifAbsent: () => 1);
    }
    
    // Get a sorted list of unique cards
    List<int> uniqueCards = countMap.keys.toList()..sort();
    
    // Try to form groups
    for (int card in uniqueCards) {
      int startCount = countMap[card]!;
      if (startCount > 0) {
        for (int i = 0; i < groupSize; i++) {
          int currentCard = card + i;
          if (countMap[currentCard] == null || countMap[currentCard]! < startCount) {
            return false; // If there aren't enough cards to form the group, return false
          }
          countMap[currentCard] = countMap[currentCard]! - startCount;
        }
      }
    }
    
    return true;
  }
}
