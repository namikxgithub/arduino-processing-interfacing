import controlP5.*;
import processing.serial.*;
ControlP5 cp5;

PFont font2;
PFont font;
Serial port;

void setup(){
  
  size(300,670);  //window size
  
  printArray(Serial.list());  //prints all available serial ports
  
  port = new Serial(this, "COM3", 9600); 
  
  cp5 = new ControlP5(this);    //??
  
  font = createFont("Times New Roman Bold Italic", 15); 
  font2 = createFont("Sitka Banner Bold Italic", 30);// custom font
  
  cp5.addButton("red")          //button specifications 
     .setPosition(100,100)
     .setSize(100,80)
     .setFont(font);
     
     cp5.addButton("redl")          //button specifications 
     .setPosition(30,100)
     .setSize(50,80)
     .setFont(font);
     
     cp5.addButton("redr")          //button specifications 
     .setPosition(220,100)
     .setSize(50,80)
     .setFont(font);
     
    cp5.addButton("blue")
     .setPosition(100,300)
     .setSize(100,80)
     .setFont(font);
     
     cp5.addButton("bluer")          //button specifications 
     .setPosition(220,300)
     .setSize(50,80)
     .setFont(font);
     
      cp5.addButton("bluel")          //button specifications 
     .setPosition(30,300)
     .setSize(50,80)
     .setFont(font);
     
     cp5.addButton("green")
     .setPosition(100,500)
     .setSize(100,80)
     .setFont(font);
     
     cp5.addButton("greenr")          //button specifications 
     .setPosition(220,500)
     .setSize(50,80)
     .setFont(font);
     
      cp5.addButton("greenl")          //button specifications 
     .setPosition(30,500)
     .setSize(50,80)
     .setFont(font);
}
void draw()
{
  background(150,0,100);
  fill(10,100,100);                //text colour
  text("LED CONTROL" ,80,30);
  textFont(font2);
}

void red()
{
  port.write(1);
}
void blue()
{
  port.write(7);
}
void green()
{
  port.write(4);
}
void redl()
{
  port.write(2);
}
void bluel()
{
  port.write(8);
}
void greenl()
{
  port.write(5);
}
void redr()
{
  port.write(3);
}
void bluer()
{
  port.write(9);
}
void greenr()
{
  port.write(6);
}
