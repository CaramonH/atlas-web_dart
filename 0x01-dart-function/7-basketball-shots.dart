//Given two maps that represents the number of successful shots for each shot type in a basketball game between team A and Team B.
//function whoWins() that calculates the total number of points for each team and return the winning team
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var teamAPoints = teamA['Free throws']! * 1 + teamA['2 pointers']! * 2 + teamA['3 pointers']! * 3;
  var teamBPoints = teamB['Free throws']! * 1 + teamB['2 pointers']! * 2 + teamB['3 pointers']! * 3;

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
