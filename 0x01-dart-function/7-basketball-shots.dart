//Given two maps that represents the number of successful shots for each shot type in a basketball game between team A and Team B.
//function whoWins() that calculates the total number of points for each team and return the winning team
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = (teamA['Free Throw'] ?? 0) + (teamA['2 Pointer'] ?? 0) * 2 + (teamA['3 Pointer'] ?? 0) * 3;
  int teamBPoints = (teamB['Free Throw'] ?? 0) + (teamB['2 Pointer'] ?? 0) * 2 + (teamB['3 Pointer'] ?? 0) * 3;

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
