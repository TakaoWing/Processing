
ArrayList<nucleus> balls = new ArrayList<nucleus>();
ArrayList<electron> elec = new ArrayList<electron>();
float num;
void setup(){
  size(800,800,P3D);
  colorMode(HSB,360,100,100);
  noStroke();
  smooth();
  for( int i = 0; i < 20; i++){
    balls.add( new nucleus(random(-10,10),random(-10,10),random(-10,10),10));
    elec.add( new electron(100));
  }
  frameRate(60);
}

void draw(){
  background(0); //背景を黒
  lights();
  translate(width/2,height/2,0);
  rotateY(num);
  for(int i = 0; i < balls.size(); i++){
    pushMatrix();
      if(i % 2 == 0)fill(30,100,100);
      else fill(120,100,100);
      translate(balls.get(i).x,balls.get(i).y,balls.get(i).z);
      balls.get(i).update();
      sphere(balls.get(i).radius);
    popMatrix();
    pushMatrix();
      elec.get(i).update();
      translate(elec.get(i).x,elec.get(i).y,elec.get(i).z);
      fill(180,100,100);
      sphere(10);
    popMatrix();
  }
  //num += 0.01;
}

/*
void keyPressed(){
  if(key == CODED && keyCode == UP) 
  else if(key == CODED && keyCode == DOWN)
}
*/