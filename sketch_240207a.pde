float angleX = 0;
float angleY = 0;
float angleZ = 0;
float x = PI/2;
float y = PI/2;
float y1 = PI/2;
float X = 0;
float X1 = -195;
float X2 = -120;
float X3 = -80;
float X4 = -35;
float X5 = 25;
float X6 = 135;
float X7 = 230;
float Y = 0;
float Y1 = 0;
float Y2 = 0;
float Z = 0;

void setup(){
  size(1200, 1200, P3D);  
   noStroke();  
}
void draw(){
  background(255);
 camera(100, 100, 50, 0, 0, 0, 0, 0, -1);
 
  if(keyPressed){
if(key == 'k'){
  angleZ -= 0.01;
}
if(key == 'i'){
  angleX += 0.01;
}
if(key == 'j'){
  angleY += 0.01;
}
if(key == 'r'){
  angleX = 0;
  angleY = 0;
  angleZ = -PI/4;
  x = PI/2;
  X = 0;
  y = PI/2;
  Y = 0;
}
if(key == 'R'){
  angleX = 0;
  angleY = 0;
  angleZ = 0;
  x = PI/2;
  X = 0;
  y = PI/2;
  Y = 0;
}
if(key == 'a'){
  x += 0.02;
  X = cos(x);
}
if(key ==  'w'){
  y += 0.05;
  Y = cos(y);
  Y1 = cos(y);
  Y2 = cos(y);
  X1 += 0.5;
  X2 += 0.5;
  X3 += 0.5;
  X4 += 0.5;
  X5 += 0.5;
  X6 += 0.5;
  X7 += 0.5;
}
if(cos(y) > 0){
  Y1 = 0;
  Y2 = cos(y);
}
if(cos(y) < 0){
  Y1 = cos(y);
  Y2 = 0;
}
if(X1 > width/5){
  X1 = -240;
}
if(X2 > width/5){
  X2 = -240;
}
if(X3 > width/5){
  X3 = -240;
}
if(X4 > width/5){
  X4 = -240;
}
if(X5 > width/5){
  X5 = -240;
}
if(X6 > width/5){
  X6 = -240;
}
if(X7 > width/5){
  X7 = -240;
}  
}

    rotateX(angleX);
    rotateY(angleY);
    rotateZ(angleZ);


stroke(0);

  pushMatrix();
  translate(X1, -120, 60);
  fill(0);
  box(90, 30, 180);
  popMatrix();
  
  pushMatrix();
  translate(X2, -120, 0);
  fill(200);
  box(60, 30, 60);
  popMatrix();
  
  pushMatrix();
  translate(X3, -120, 60);
  fill(150);
  box(20, 30, 180);
  popMatrix();
  
  pushMatrix();
  translate(X4, -120, 20);
  fill(60);
  box(70, 30, 100);
  popMatrix();
  
  pushMatrix();
  translate(X5, -120, 60);
  fill(100);
  box(50, 30, 180);
  popMatrix();
  
  pushMatrix();
  translate(X6, -120, 10);
  fill(40);
  box(170, 30, 80);
  popMatrix();
  
  pushMatrix();
  translate(X7, -120, 30);
  fill(255);
  box(20, 30, 120);
  popMatrix();
  
  
  
  //腰
  translate(0, 0, 0);
  fill(200);
  box(15, 30, 15);
 
  //左足
  pushMatrix();
  translate(0, 0, -7.5);
  rotateY(Y*7/10);
  translate(0, 7.5, -7.5);
  fill(200);
  box(15, 15, 30);
  
  pushMatrix();
  translate(0, 0, -5);
  rotateY(-Y2*3.5/10);
  translate(0, 0, -20);
  fill(200);
  box(12, 12, 40);
  popMatrix();

  popMatrix();
  
  //右足
  pushMatrix();
  translate(0, 0, -7.5);
  rotateY(-Y/2);
  translate(0, -7.5, -7.5);
  fill(200);
  box(15, 15, 30);
  
  pushMatrix();
  translate(0, 0, -5);
  rotateY(Y1*3.5/10);
  translate(0, 0, -20);
  fill(200);
  box(12, 12, 40);
  popMatrix();
  
  popMatrix();  
  
  //胴体
  pushMatrix();
  translate(0, 0, 20);
  fill(200);
  box(15, 30, 40);
  popMatrix();
  
  //左腕
  pushMatrix();
  translate(0, 20, 40);
  rotateY(-Y/2);
  translate(0, 0, -16.25);
  fill(200);
  box(10, 10, 32.5);
  
  pushMatrix();
  translate(0, 0, -16.25);
  rotateY(-Y1*54/90);
  translate(0, 0, -6.25);
  fill(200);
  box(7, 7, 27.5);
  popMatrix();
  
  popMatrix();
  
  //右腕
  pushMatrix();
 translate(0, -20, 40);
  rotateY(Y/2);
  translate(0, 0, -16.25);
  fill(200);
  box(10, 10, 32.5);
  
  pushMatrix();
  translate(0, 0, -16.25);
  rotateY(Y2*54/90);
  translate(0, 0, -6.25);
  fill(200);
  box(7, 7, 27.5);
  popMatrix();
  
  popMatrix();
  
  //首
  pushMatrix();
  rotate(X);
  translate(0, 0, 41.5);
  fill(200);
  box(5, 5, 3);
  popMatrix();
  
  //顔
  pushMatrix();
  rotate(X);
  translate(-2.5, 0, 49);
  fill(200);
  box(13, 10, 15);
  popMatrix();
}
  
