Farm[] livestock= new Farm[10];
void setup() {
  size(800,800);
  background(0);
  for (int i=0; i<livestock.length; i++) {
    if (i<=4) { 
      livestock[i]=new Chick();
    } else {
      livestock[i]=new Cow();
    }
  }
}
interface Farm {
  public void speak();
}
abstract class Animal implements Farm
{
  protected int x=(int)(Math.random()*(width-80)+40);
  protected int y=(int)(Math.random()*(height-80)+40);
  protected String say;
  public void speak()
  {
    text(say, x+50, y+30);
  }
}
    
class Chick extends Animal {
  Chick() {
    say= "Squeak";
  }
}
class Cow extends Animal {
  Cow() {
    say= "Moo";
  }
}
void draw() {
  for (int i=0; i<livestock.length; i++) {
    livestock[i].speak();
    
  }
}