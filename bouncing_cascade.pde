// global vars
float x, y; // position
float vx, vy; // velocity

int num = 20; 

void setup(){
  size(400, 400);
  
  // init variables
  x = width/4;
  y = height/2;
  vx = -1.12;
  vy = 1.9;
}

void draw(){
  
  fill(255, 32);// transparency
  noStroke();
  rect(0,0, width, height);
  
  stroke(0);
  noFill();
  
  for(int i = 0; i < num ; i++){
    // num times: 
    
    float _x = i * (x/num); 
    float _y = i * (y/num);
    float szx = width - ( width / num  * i) ;
    float szy = height - ( height / num  * i) ;
    
    rect( _x, _y, szx, szy );
  }
  
  // add velocity 
  x += vx;
  y += vy;
  
  // check bounds
  if(x <= 0 || x >= width){
    vx *= -1;
  }
  
  if(y <= 0 || y >= height){
    vy *= -1;
  }
}