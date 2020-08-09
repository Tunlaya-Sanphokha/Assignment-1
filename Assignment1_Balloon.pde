//Tunlaya Sanphokha
///date 10/08/2020
///step 3
///create my baloon with class 
Balloon balloon1 = new Balloon(70,70,70,color(203,203,0));   // that balloon variable1 calls the class


void setup(){
  size(500,500); 
}

void draw(){
  background(255,200,200);   //use background(color code)
  balloon1.draw_ball(); // variable1 call the method of class 
}
class Balloon{
  float pos_x;  //variable keep position x
  float pos_y;  //variable keep position y
  float sizeball; // variable keep width and height of balloon
  color c;  // variable keep color
  
  Balloon(float position_x,float position_y,float diameter, color color_)//parametor of class name Balloon
  {
    pos_x = position_x;  //variable keep parameter  position x of balloon
    pos_y = position_y;  //variable keep parameter  position y of balloon
    sizeball = diameter; //variable keep parameter  diameter of balloon 
    c = color_;   //variable keep parameter  color_ of  balloon
  }
  void draw_ball(){
    fill(c); // create color of balloon
    circle(pos_x,pos_y,sizeball);  //create x , y and sizebal of balloon
    line(pos_x,pos_y+(sizeball/2),pos_x,pos_y+(sizeball/2)+sizeball); //create line of balloon
  }
}
