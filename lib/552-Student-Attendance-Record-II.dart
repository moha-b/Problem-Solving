class Solution {
  static const int MOD = 1000000007;

  int checkRecord(int n) {
    // Define the dp array
    List<List<List<int>>> dp = List.generate(
        n + 1, (_) => List.generate(2, (_) => List.generate(3, (_) => 0)));

    // Initial state: one way to have an empty record
    dp[0][0][0] = 1;

    for (int i = 1; i <= n; i++) {
      for (int j = 0; j <= 1; j++) {
        for (int k = 0; k <= 2; k++) {
          // If the previous state is valid, transition to current state
          if (j > 0) {
            // Adding 'A'
            dp[i][j][0] = (dp[i][j][0] + dp[i - 1][j - 1][k]) % MOD;
          }
          // Adding 'P'
          dp[i][j][0] = (dp[i][j][0] + dp[i - 1][j][k]) % MOD;
          // Adding 'L' if k < 2
          if (k > 0) {
            dp[i][j][k] = (dp[i][j][k] + dp[i - 1][j][k - 1]) % MOD;
          }
        }
      }
    }

    // Sum up all the valid sequences of length n
    int result = 0;
    for (int j = 0; j <= 1; j++) {
      for (int k = 0; k <= 2; k++) {
        result = (result + dp[n][j][k]) % MOD;
      }
    }

    return result;
  }
}