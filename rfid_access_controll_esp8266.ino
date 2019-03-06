#include "Arduino.h"

//Default arduino
void setup() {
  pinMode(LED_BUILTIN, OUTPUT);     // Initialize the BUILTIN_LED pin as an output
  Serial.begin(115200);
  setup_wifi();
  setup_mqtt();
  setup_rfid();
  pinMode(2, OUTPUT);
}

void loop()
{
  digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
  loop_mqtt();
  loop_rfid();
  digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
}
