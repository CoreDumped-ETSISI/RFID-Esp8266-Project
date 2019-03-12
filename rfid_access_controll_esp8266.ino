#include "Arduino.h"

//Default arduino
void setup() {
  pinMode(LED_BUILTIN, OUTPUT);     // Initialize the BUILTIN_LED pin as an output
  Serial.begin(115200);
  setup_wifi();
  setup_spiffs();
  setup_mqtt();
  setup_rfid();
  setup_ntp();
  pinMode(2, OUTPUT);
}

void loop()
{
  digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
  loop_mqtt();
  loop_rfid();
  uint32_t time = request_time();
  Serial.print("NTP time: ");
  Serial.println(time);
  digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
}
