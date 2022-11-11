/**
 * Generates a random test whitch has a minimum of 10 questions
 */
public class Test {
  public int numQuestions = 0;
  public int numCorrect = 0;
  public double percentCor = 0.0;
  public Question[] questions;
  public int curQues = 0;
  private Stor s;

  // Center width and center height respectively of the canvas
  private int cw;
  private int ch;

  // * Constants for drawing the UI

  // * Top
  private final int topHeight = 100;
  private final color topBg = #1e293b;
  private final int topSafe = 10;

  // * Question
  private final int quesStart = 200;
  private final int quesSpace = 50;
  private final color dividerC = #6b728099;

  public Test(int q, Stor s) {
    numQuestions = q;
    this.s = s;

    questions = new Question[q];
    for(int i = 0; i < q; i++) {
      questions[i] = new Question();
    }
  }

  public void _setup() {
    // ! For debugging
    for(Question u : questions) {
      println(u);
    }

    cw = width / 2;
    ch = height / 2;
  }

  public void _draw() {
    drawTop();
    drawQuestion();
    drawNext();
  }

  private void drawTop() {
    push();

    fill(topBg);
    rect(0, 0, width, 100);

    fill(255);
    textSize(25);
    textAlign(LEFT, TOP);
    text("Q# " + (curQues + 1) + " / 10", topSafe, topSafe);

    textAlign(RIGHT, TOP);
    text("#Correct " + (numCorrect) + " / 10", width-topSafe, topSafe);

    pop();
  }

  /**
   * Draws the current question to the canvas
   */
  private void drawQuestion() {
    push();
    Question q = questions[curQues];

    // Draw the questions numbers
    textSize(64);
    textMode(CENTER);
    text("" + q.num1, cw + quesSpace, quesStart);
    text("" + q.num2, cw + quesSpace, quesStart + 100);

    // Draw the arithmetic type
    shape(
      q.addition ? s.plus : s.minus,
      cw - quesSpace,
      quesStart + 80,
      75,
      75
    );

    fill(dividerC);
    // circle(cw - quesSpace, quesStart + 120, 10);
    // circle(cw + quesSpace, quesStart + 120, 10);

    // shapeMode(LEFT, TOP);
    rect(cw - quesSpace - 30, quesStart + 120,  quesSpace * 4, 10, 10);

    pop();
  }

  private void drawNext() {

  }
}