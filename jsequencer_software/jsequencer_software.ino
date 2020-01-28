#include <Adafruit_NeoPixel.h>

// pin definitions
#define PLAY_PAUSE_PIN 0
#define STEP_PIN 1
#define NOTE_UP_PIN 2
#define NOTE_DOWN_PIN 3
#define NEOPIXELS_PIN 10

// sequence parameters
#define NUM_STEPS 16
#define VELOCITY 100
#define CHANNEL 1
#define MIN_STEP_DELAY 10

// define the step
struct Step {
  int note;
  int vel;
};

// declare neopixel strip
Adafruit_NeoPixel strip(NUM_STEPS, NEOPIXELS_PIN, NEO_GRB + NEO_KHZ800);

// variables
int step_delay, current_step;
unsigned long tempoStartTime, tempoEndTime, lastStepTime;
bool playing, tempoTimerOn, noteIsOn;
struct Step sequencer[NUM_STEPS];

void set_step(int i, int note, int vel) {
  sequencer[i].note = note;
  sequencer[i].vel = vel;
}

void set_sequence() {
  // preset sequence
  set_step(0, 60, VELOCITY);
  set_step(1, 64, VELOCITY);
  set_step(2, 67, VELOCITY);
  set_step(3, 71, VELOCITY);
  set_step(4, 60, VELOCITY);
  set_step(5, 64, VELOCITY);
  set_step(6, 67, VELOCITY);
  set_step(7, 71, VELOCITY);
  set_step(8, 60, VELOCITY);
  set_step(9, 64, VELOCITY);
  set_step(10, 65, VELOCITY);
  set_step(11, 67, VELOCITY);
  set_step(12, 60, VELOCITY);
  set_step(13, 64, VELOCITY);
  set_step(14, 65, VELOCITY);
  set_step(15, 67, VELOCITY);
}


void show_current_step() {
  // show the current step on the neopixels
  strip.clear();
  for(int i = 0; i < NUM_STEPS; i++){
    
    if(i % 4 == 0){
      if(i == current_step){
        strip.setPixelColor(i, 60, 0, 60);
      }
      else if(tempoTimerOn){
        strip.setPixelColor(i, 0, 60, 0);
      }
      else{
        strip.setPixelColor(i, 0, 0, 60);
      }
    }
    
    else if(i == current_step){
      strip.setPixelColor(i, 60, 0, 0);
    }
    else {
      strip.setPixelColor(i, 0, 0, 0);
    }
  }
  strip.show();
}

void play_pause_button_pressed() {
  if(playing){
    step_off();
  }
  playing = !playing; // toggle play/pause
}

void step_button_pressed() {
  if(playing == false) {
    step_ahead();
    autoplay_step();
  }
  else {
    if(tempoTimerOn == false)
    {
      tempoStartTime = millis();
      tempoTimerOn = true;
    }
    else
    {
        tempoEndTime = millis();
        tempoTimerOn = false;
        if(tempoEndTime - tempoStartTime >= MIN_STEP_DELAY){
          step_delay = int((tempoEndTime - tempoStartTime) / 4);
        }
    }
  }
}

void note_up_button_pressed() {
  if(playing == false) {
    sequencer[current_step].note = sequencer[current_step].note + 1;
    autoplay_step();
  }
}

void note_down_button_pressed() {
  if(playing == false) {
    sequencer[current_step].note = sequencer[current_step].note - 1;
    autoplay_step();
  }
}

void step_ahead() {
  // step ahead one place
    current_step++;
    if (current_step >= NUM_STEPS)
      current_step = 0;
}

void autoplay_step(){
  step_on();
  delay(step_delay);
  step_off();
}

void step_on(){
  usbMIDI.sendNoteOn(sequencer[current_step].note, VELOCITY, CHANNEL);
}

void step_off(){
  usbMIDI.sendNoteOff(sequencer[current_step].note, VELOCITY, CHANNEL);
}

void setup() {
  // start user interface
  strip.begin();
  strip.show();

  // initialize buttons
  pinMode(PLAY_PAUSE_PIN, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(PLAY_PAUSE_PIN), play_pause_button_pressed, FALLING);
  pinMode(STEP_PIN, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(STEP_PIN), step_button_pressed, FALLING);
  pinMode(NOTE_UP_PIN, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(NOTE_UP_PIN), note_up_button_pressed, FALLING);
  pinMode(NOTE_DOWN_PIN, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(NOTE_DOWN_PIN), note_down_button_pressed, FALLING);
  
  set_sequence();

  step_delay = 100; // step delay in ms
  lastStepTime = millis();
  current_step = 0;
  playing = true;
  tempoTimerOn = false;
  noteIsOn = false;
}

void loop() {

  if(playing == true) {
    if(millis() > lastStepTime + step_delay){
      lastStepTime = millis();
      step_ahead();
      step_on();
    }
    else if(millis() > lastStepTime + (step_delay / 2)){
      step_off();
    }
  }
  show_current_step();
  
  while(usbMIDI.read()) {} // ignore incoming MIDI messages
  
}
