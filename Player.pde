public class Player extends Obj {
  public String name;
  public int totalCorrect = 0;
  public int currStreak = 0;
  public int highestStreak = 0;
  public int score = 0;
  public Queue<Card> cards = new LinkedList();

  public Player(Assets a, Variables v) {
    super(a, v);
  }

  // TODO: Add methods to get new card and to check cards

  public String toString() {
    return "Player: " + name + " " + cards.toString();
  }

  public void _update() {
    //
  }
}
