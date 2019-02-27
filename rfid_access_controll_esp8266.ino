#include "Arduino.h"
#include "ESP8266WiFi.h"
#include "PubSubClient.h"
#include "MFRC522.h"
#include "SPI.h"

//Wifi + MQtt
const char* ssid = "LosCroce";
const char* password = "702211D75F254B54E6BF";
const char* mqtt_server = "cheepcheep.mad.crossforests.com";

WiFiClient espClient;
PubSubClient client(espClient);
long lastMsg = 0;
char msg[50];
int value = 0;

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void setup_mqtt(){
	client.setServer(mqtt_server, 1883);
	client.setCallback(callback);
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

//RFID
#define SS_PIN D8
#define RST_PIN D3
MFRC522 rfid(SS_PIN, RST_PIN);
MFRC522::MIFARE_Key key;
byte nuidPICC[4];

void setup_rfid(){
	SPI.begin(); // Init SPI bus
	rfid.PCD_Init(); // Init MFRC522
	for (byte i = 0; i < 6; i++)
	{
		key.keyByte[i] = 0xFF;
	}
}

void printHex(byte *buffer, byte bufferSize) {
	for (byte i = 0; i < bufferSize; i++)
	{
		Serial.print(buffer[i] < 0x10 ? " 0" : " ");
		Serial.print(buffer[i], HEX);
	}
}

void printDec(byte *buffer, byte bufferSize) {
  for (byte i = 0; i < bufferSize; i++) {
    Serial.print(buffer[i] < 0x10 ? " 0" : " ");
    Serial.print(buffer[i], DEC);
  }
}

void loop_rfid(){
	if ( ! rfid.PICC_IsNewCardPresent())
		return;
	// Verify if the NUID has been readed
	if ( ! rfid.PICC_ReadCardSerial())
		return;

	Serial.print(F("PICC type: "));
	MFRC522::PICC_Type piccType = rfid.PICC_GetType(rfid.uid.sak);
	Serial.println(rfid.PICC_GetTypeName(piccType));

	// Check is the PICC of Classic MIFARE type
	/*
	if (piccType != MFRC522::PICC_TYPE_MIFARE_MINI &&
		piccType != MFRC522::PICC_TYPE_MIFARE_1K &&
		piccType != MFRC522::PICC_TYPE_MIFARE_4K)
	{
		Serial.println(F("Your tag is not of type MIFARE Classic."));
		return;
	}
	*/

	if (rfid.uid.uidByte[0] != nuidPICC[0] ||
		rfid.uid.uidByte[1] != nuidPICC[1] ||
		rfid.uid.uidByte[2] != nuidPICC[2] ||
		rfid.uid.uidByte[3] != nuidPICC[3] )
	{

		Serial.println(F("A new card has been detected."));
		// Store NUID into nuidPICC array
		for (byte i = 0; i < 4; i++) {
		  nuidPICC[i] = rfid.uid.uidByte[i];
		}

		Serial.println(F("The NUID tag is:"));
		Serial.print(F("In hex: "));
		printHex(rfid.uid.uidByte, rfid.uid.size);
		Serial.println();
		Serial.print(F("In dec: "));
		printDec(rfid.uid.uidByte, rfid.uid.size);
		Serial.println();
	}
	else Serial.println(F("Card read previously."));

	// Halt PICC
	rfid.PICC_HaltA();

	// Stop encryption on PCD
	rfid.PCD_StopCrypto1();
}

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
  //Maybe temporal debug, not check if already read
  for(int i=0;i<4;i++)nuidPICC[i]=0;
  digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
}
