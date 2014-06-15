#define RESET 14
#define STEP 11
#define DIRECTION  12
#define SWITCH 13

#define FORWARDS 0
#define BACKWARDS 1

#define FASTEST_STEP 700

void setup() {
  pinMode(STEP, OUTPUT);
  pinMode(DIRECTION, OUTPUT);
  pinMode(SWITCH, INPUT);
  pinMode(RESET, INPUT);
  digitalWrite(SWITCH, 1); // pull up
  digitalWrite(DIRECTION, FORWARDS);
}

void doStep(int time) {
  digitalWrite(STEP,1);
  delayMicroseconds(100);
  digitalWrite(STEP,0);
  delayMicroseconds(time - 100);
}

void loop() {
  while(true) {
    
    if (!digitalRead(SWITCH)) { // rewind mode active
    
      digitalWrite(DIRECTION, BACKWARDS);
      pinMode(RESET,INPUT);
      digitalWrite(RESET,0);

      // run backwards at max speed until reset goes low
      while(digitalRead(RESET) && !digitalRead(SWITCH)) 
        doStep(FASTEST_STEP);
        
      if (digitalRead(SWITCH)) { // aborted
        digitalWrite(DIRECTION, FORWARDS);
        continue;
      }
      
      // now advance forward enough to cause reset to be unasserted
      digitalWrite(DIRECTION, FORWARDS);
        
      while(!digitalRead(RESET)) {
        pinMode(RESET, OUTPUT);
        digitalWrite(RESET, 1);
        
        for (int i = 0; i < 500; i++)
          doStep(FASTEST_STEP);
          
        pinMode(RESET, INPUT);
        digitalWrite(RESET, 0);
        delay(100);
      }
 
      // advance a little more to make sure
      for (int i = 0; i < 500; i++)
          doStep(FASTEST_STEP);
       
      pinMode(RESET, OUTPUT); // hold reset low to avoid coil overheating
      digitalWrite(RESET, 0);
      
      // wait for switch to be unset    
      while (!digitalRead(SWITCH)) ; 
    
      pinMode(RESET, INPUT);
      digitalWrite(RESET, 0);    
    }
 
    doStep(5531);
  }
}
