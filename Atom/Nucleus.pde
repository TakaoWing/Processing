class nucleus{
  
  float x,y,z,radius; //陽子と中性子の座標(x,y,z),半径(radius)
  int c;//色
  
  nucleus(float x, float y, float z, float r){
    this.x = x;
    this.y = y;
    this.z = z;
    this.radius = r;
  }
  
  void update(){
    for(int i = 0; i < balls.size(); i++){
    //if(dist(x,y,z,balls.get(i).x,balls.get(i).y,balls.get(i).z) < radius + balls.get(i).radius){}
    if( abs(x - balls.get(i).x) < radius + balls.get(i).radius);
    }
  }
  
}