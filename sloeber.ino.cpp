#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2019-03-06 22:09:12

#include "Arduino.h"
#include "Arduino.h"
#include "ESP8266WiFi.h"
#include "PubSubClient.h"
#include "Arduino.h"
#include "MFRC522.h"
#include "SPI.h"
#include "Arduino.h"
#include "Arduino.h"
#include "ESP8266WiFi.h"

void setup_mqtt();
void callback(char* topic, byte* payload, unsigned int length) ;
void reconnect() ;
void loop_mqtt();
void setup_rfid();
void printHex(byte *buffer, byte bufferSize) ;
void printDec(byte *buffer, byte bufferSize) ;
void loop_rfid();
void setup() ;
void loop() ;
void setup_wifi() ;

#include "rfid_access_controll_esp8266.ino"

#include "mqtt.ino"
#include "rfid.ino"
#include "wifi.ino"

#endif
