/*
 * mqtt.h
 *
 *  Created on: Feb 27, 2019
 *      Author: ubuntu
 */

#ifndef MQTT_H_X_
#define MQTT_H_X_

#include "Arduino.h"
#include "ESP8266WiFi.h"
#include "PubSubClient.h"
#include <functional>

void setup_mqtt();
void callback(char* topic, byte* payload, unsigned int length);
void reconnect();
void loop_mqtt();

#endif /* MQTT_H_X_ */
