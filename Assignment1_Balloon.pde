//Tunlaya Sanphokha
///date 11/08/2020
///step 4
///Now we'll make my balloon move.  we're going to use y-position subtraction.
Balloon balloon1 = new Balloon(70,70,70,color(203,203,0));   // that balloon variable1 calls the class //variable balloon1 have position x,y and color code


void setup(){
  size(500,500); 
}

void draw(){
  background(255,200,200);   //use background(color code)
  balloon1.draw_ball(); // variable balloon1 call the method of class 
  balloon1.move();  // variable  balloon1 call the method of class
}
class Balloon{
  float pos_x;  //variable keep position x
  float pos_y;  //variable keep position y
  float sizeball; // variable keep width and height of balloon
  color c;  // variable keep color
  float y;
  Balloon(float position_x,float position_y,float diameter, color color_)//parametor of class name Balloon
  {
    pos_x = position_x;  //variable keep parameter  position x of balloon
    pos_y = position_y;  //variable keep parameter  position y of balloon
    sizeball = diameter; //variable keep parameter  diameter of balloon 
    c = color_; //variable keep parameter  color_ of  balloon
    y = 1; ///variable y keep y-position
  }
  void draw_ball(){
    fill(c); // create color of balloon
    circle(pos_x,pos_y,sizeball);  //create x , y and sizebal of balloon
    line(pos_x,pos_y+(sizeball/2),pos_x,pos_y+(sizeball/2)+sizeball); //create line of balloon
  }
  void move(){  //create function for my balloon move
    if(pos_y + sizeball/2 >=height){ //condition balloon move if balloon move >= height balloon is move up
      y = -y; 
    }
    else if(pos_y - sizeball/2 <=0){ //condition balloon move if balloon move <= 0 balloon is move down
      y = -y; 
    }
    pos_y += y;  
  }
}
