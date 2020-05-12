int bval = 150;
int rval = 150;
int gval = 150;
#define r 3
#define b 5
#define g 6
int inc = 10;
int changeval(int val);

void setup() {
  // put your setup code here, to run once:
  pinMode(r,OUTPUT);
  pinMode(b,OUTPUT);
  pinMode(g,OUTPUT);
 
  digitalWrite(r,rval);
  digitalWrite(b,bval);
  digitalWrite(g,gval);

  Serial.begin(9600);

}

void loop() {
  if(Serial.available())
{
  int val = Serial.read();

  if(val == 1)
  {
   rval = 0; //changeval(rval);
    
    }

    if(val == 2)
  {
    if(rval<=150)
    rval = rval+inc;
  }
    if(val == 3)
  {
    if(rval>=0)
   rval = rval-inc;
    }
    
    if(val == 7)
  {
   bval =  0;//changeval(bval);
  }
  
   if(val == 8)
  {
    if(bval<=150)
    bval = bval+inc;
    }

    if(val == 9)
  {
    if(bval>0)
    bval = bval-inc;
    }
    
    if(val == 4)
   {
    gval = 0;//changeval(gval); 
    }

    if(val == 5)
   {
    if(gval<=150)
    gval = gval+inc;
    }
    if(val == 6)
   {
    if(gval>=0)
    gval = gval-inc;
    }
    
analogWrite(g,gval);
analogWrite(b,bval);
analogWrite(r,rval);
  }


}


int changeval(int val)
{
if(val==150)
val=0;
else
val=150;

return val;
}
