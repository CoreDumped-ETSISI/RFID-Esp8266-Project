#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2019-03-12 11:51:24

#include "Arduino.h"
#include "Arduino.h"
#include "ESP8266WiFi.h"
#include "PubSubClient.h"
#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>
#include <WiFiUdp.h>
#include "Arduino.h"
#include "MFRC522.h"
#include "SPI.h"
#include "Arduino.h"
#include "Arduino.h"
#include <FS.h>
#include "Arduino.h"
#include "ESP8266WiFi.h"

void setup_mqtt();
void callback(char* topic, byte* payload, unsigned int length) ;
void reconnect() ;
void loop_mqtt();
void setup_ntp() ;
uint32_t request_time() ;
uint32_t getTime() ;
void sendNTPpacket(IPAddress& address) ;
void setup_rfid();
void printHex(byte *buffer, byte bufferSize) ;
void printDec(byte *buffer, byte bufferSize) ;
void loop_rfid();
void setup() ;
void loop() ;
void setup_spiffs();
File get_file(const char* file);
void setup_wifi() ;

#include "rfid_access_controll_esp8266.ino"

#include "mqtt.ino"
#include "ntp.ino"
#include "rfid.ino"
#include "spiffs.ino"
#include "wifi.ino"

#endif
