/*
 * mqtt.cpp
 *
 *  Created on: Feb 27, 2019
 *      Author: ubuntu
 */

#include "Mqtt.h"

WiFiClient mqtt_espClient;
PubSubClient mqtt_client;
long lastMsg = 0;
char msg[50];
int value = 0;

void setup_mqtt(const char* mqtt_server){
	mqtt_espClient = WiFiClient();
	mqtt_client = PubSubClient();
	mqtt_client.setServer(mqtt_server, 1883);
	mqtt_client.setCallback(callback);
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i = 0; i < length; i++)
  {
    Serial.print((char)payload[i]);
  }
  Serial.println();

  // Switch on the LED if an 1 was received as first character
  if ((char)payload[0] == '1')
  {
    digitalWrite(BUILTIN_LED, LOW);   // Turn the LED on (Note that LOW is the voltage level
    // but actually the LED is on; this is because
    // it is active low on the ESP-01)
  } else
  {
    digitalWrite(BUILTIN_LED, HIGH);  // Turn the LED off by making the voltage HIGH
  }

}

void reconnect() {
  // Loop until we're reconnected
  while (!mqtt_client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (mqtt_client.connect(clientId.c_str()))
    {
      Serial.println("connected");
      // Once connected, publish an announcement...
      mqtt_client.publish("outTopic", "hello world");
      // ... and resubscribe
      mqtt_client.subscribe("inTopic");
    } else
    {
      Serial.print("failed, rc=");
      Serial.print(mqtt_client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void loop_mqtt(){
	if (!mqtt_client.connected())
	{
		reconnect();
	}
	mqtt_client.loop();
	long now = millis();
	if (now - lastMsg > 2000)
	{
		lastMsg = now;
		++value;
		snprintf (msg, 50, "hello world #%ld", value);
		Serial.print("Publish message: ");
		Serial.println(msg);
		mqtt_client.publish("outTopic", msg);
	}
}


