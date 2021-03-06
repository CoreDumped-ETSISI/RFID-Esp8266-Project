#include "Arduino.h"
#include "ESP8266WiFi.h"
#include "PubSubClient.h"

const char* mqtt_server = "cheepcheep.mad.crossforests.com";

WiFiClient espClient; // @suppress("Abstract class cannot be instantiated")
PubSubClient client(espClient); // @suppress("Abstract class cannot be instantiated")
long lastMsg = 0;
char msg[50];
int value = 0;

void setup_mqtt(){
	client.setServer(mqtt_server, 1883);
	client.setCallback(callback);
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (unsigned int i = 0; i < length; i++)
  {
    Serial.print((char)payload[i]);
  }
  Serial.println();

  // Switch on the LED if an 1 was received as first character
  if ((char)payload[0] == '1')
  {
    digitalWrite(LED_BUILTIN, LOW);   // Turn the LED on (Note that LOW is the voltage level
    // but actually the LED is on; this is because
    // it is active low on the ESP-01)
  } else
  {
    digitalWrite(LED_BUILTIN, HIGH);  // Turn the LED off by making the voltage HIGH
  }

}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str()))
    {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish("outTopic", "hello world");
      // ... and resubscribe
      client.subscribe("inTopic");
    } else
    {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void loop_mqtt(){
	if (!client.connected())
	{
		reconnect();
	}
	client.loop();
	long now = millis();
	if (now - lastMsg > 2000)
	{
		lastMsg = now;
		++value;
		snprintf (msg, 50, "hello world #%ld", value);
		Serial.print("Publish message: ");
		Serial.println(msg);
		client.publish("outTopic", msg);
	}
}
