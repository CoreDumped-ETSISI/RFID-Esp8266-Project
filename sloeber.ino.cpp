#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2019-02-27 23:14:19

#include "Arduino.h"
#include "Arduino.h"
#include "ESP8266WiFi.h"
#include "PubSubClient.h"
#include "MFRC522.h"
#include "SPI.h"

void setup_wifi() ;
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

#include "rfid_access_controll_esp8266.ino"


#endif
