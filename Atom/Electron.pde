class electron{
  float x,y,z; // 電子の位置(x,y,z);
  float radius; // 電子の回る半径;
  float phi = random(TWO_PI);
  float setZ;
  
  electron(float radius){
    this.radius = radius;
    setZ = random(-1,1);
  }
  
  void update(){
    x = radius * sqrt( 1 - z * z ) * cos(phi);
    y = radius * sqrt( 1 - z * z ) * sin(phi);
    z = radius * setZ;
    phi++;
}