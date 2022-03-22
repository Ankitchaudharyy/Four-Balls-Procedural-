import processing.core.PApplet;

public class FourBalls extends PApplet{
    public static final int WIDTH = 640;
    public static final int HEIGHT = 480;
    public static final int BLACK = 0;
   
    float ball1X=0, ball2X=0, ball3X=0, ball4X = 0;

    public static void main(String[] args){
      PApplet.main("FourBalls", args);
    }
  
    @Override
    public void settings(){
      super.settings();
      size(WIDTH, HEIGHT);
    }
  
    @Override
    public void setup(){
      
    }
  
    private void drawCircle(){
      float ballHeight = HEIGHT / 5;
      final int RADIUS = 30;  
      
      // ellispse(a:, b:, c:, d:); 
      ellipse(ball1X, ballHeight*1, RADIUS, RADIUS);
      ellipse(ball2X, ballHeight*2, RADIUS, RADIUS);
      ellipse(ball3X, ballHeight*3, RADIUS, RADIUS);
      ellipse(ball4X, ballHeight*4, RADIUS, RADIUS);
  
      ball1X += 1;
      ball2X += 2;
      ball3X += 3;
      ball4X += 4;
    }
  
  @Override
  public void draw(){
    drawCircle();
  }
}
