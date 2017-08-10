import ddf.minim.*;
AudioSample sound;
void setup(){
  size(125,125);
  PImage catPic= loadImage("download.jpg");
  catPic.resize(125,125);
  background(catPic);
  Minim minim = new Minim(this);        
  sound = minim.loadSample("lasergun.wav");

}
int x=49;
int y=81;
int acceleration=2;
void draw(){
  fill(250,0,0);
  ellipse(x,y,12,12);
  ellipse(x+40,y,12,12);
}
void keyPressed(){
  y-=2*acceleration;
  noStroke();
  sound.trigger();
}