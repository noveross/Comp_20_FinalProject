///George Charles Kajaleme & Nasradin Mohamed
///
 
State[] states = new State[10];
int state = 0;
PImage img;
 
void setup(){
  size(900,562);
  img = loadImage("266639-cool-backgrounds-2560x1600-computer.jpg");
 /// Ask if Leandro can help place you put to different options into their own classes
 // states[0] = new State(  0, "You are in your Apartment. There is a knock at the door. Before You approach the door What do you do? ");
 // states[0].addlink(  1, "Get the gun in your parents room. ->");
 // states[0].addlink(  1, "Go without a weapon . ->");
 
 ///Similar options have a similar triggering action but will lead to a different outcome
 // states[1] = new State(  1, "A zombie barges through the door .");
 // states[1].addlink(  0, "Leave the box. ->");
  
 // states[1] = new State(  1, "A zombie barges through the door .");
 // states[1].addlink(  0, "Leave the box. ->");
 
 // states[2] = new State(  2, "You are in outside a room.");
  //states[2].addlink(  0, "Enter the room. ->");
  
 // states[3] = new State(  2, "You are in outside a room.");
  //states[3].addlink(  0, "Enter the room. ->");
  //states[3].addlink(  1, "Enter the  second room. ->");
  
  ///Scene interaction testing
  
  states[0] = new State(  0, "You are in your Apartment");
 states[0].addlink(  1, "Enter Hallway ->");
 
   states[1] = new State(  0,"You are in the hallway");
 states[1].addlink(  2, "Enter Staircase ->");
 
   states[2] = new State(  0, "You are in your Apartment");
 states[2].addlink(  3, "Enter Lobby ->");
 
   states[3] = new State(  0,"You are in the hallway");
 states[3].addlink(  4, "Enter Parking Lot ->");
}
 
void draw(){
  background(img);
  fill(255);
  states[state].draw();
  textSize(15);
}
 
void mousePressed(){
  states[state].mouse();
}