#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>
#include <WiFiUdp.h>

ESP8266WiFiMulti wifiMulti; // Create an instance of the ESP8266WiFiMulti class, called 'wifiMulti'

WiFiUDP UDP;      // Create an instance of the WiFiUDP class to send and receive

IPAddress timeServerIP;
const char* NTPServerName = "0.europe.pool.ntp.org";

const int NTP_PACKET_SIZE = 48; // NTP time stamp is in the first 48 bytes of the message

byte NTPBuffer[NTP_PACKET_SIZE]; // buffer to hold incoming and outgoing packets

void setup_ntp() {
	Serial.println("NTP DNS Request");
	if (!WiFi.hostByName(NTPServerName, timeServerIP)) { // Get the IP address of the NTP server
		ESP.reset();
	}
	Serial.print("Time server IP:\t");
	Serial.println(timeServerIP);
	sendNTPpacket(timeServerIP);
	UDP.begin(123);              // Start listening for UDP messages on port 123
}

unsigned long intervalNTP = 60000; // Request NTP time every minute
unsigned long prevNTP = 0;
unsigned long lastNTPResponse = millis();
uint32_t timeUNIX = 0;

unsigned long prevActualTime = 0;

uint32_t request_time() {
	timeUNIX=0;
	while(timeUNIX==0){
		Serial.println("Requesting time");
		sendNTPpacket(timeServerIP);               // Send an NTP request
		for(int i=0;i<50 && timeUNIX==0 ; i++){
			Serial.println("Sleep");
			delay(300); // Check if an NTP response has arrived and get the (UNIX) time
			getTime();
		}
	}
	return timeUNIX;
}

uint32_t getTime() {
	if (UDP.parsePacket() == 0) { // If there's no response (yet)
		return 0;
	}
	UDP.read(NTPBuffer, NTP_PACKET_SIZE); // read the packet into the buffer
	// Combine the 4 timestamp bytes into one 32-bit number
	uint32_t NTPTime = (NTPBuffer[40] << 24) | (NTPBuffer[41] << 16)
			| (NTPBuffer[42] << 8) | NTPBuffer[43];
	// Convert NTP time to a UNIX timestamp:
	// Unix time starts on Jan 1 1970. That's 2208988800 seconds in NTP time:
	const uint32_t seventyYears = 2208988800UL;
	// subtract seventy years:
	timeUNIX = NTPTime - seventyYears;
	return timeUNIX;
}

void sendNTPpacket(IPAddress& address) {
	memset(NTPBuffer, 0, NTP_PACKET_SIZE);  // set all bytes in the buffer to 0
	// Initialize values needed to form NTP request
	NTPBuffer[0] = 0b11100011;   // LI, Version, Mode
	// send a packet requesting a timestamp:
	UDP.beginPacket(address, 123); // NTP requests are to port 123
	UDP.write(NTPBuffer, NTP_PACKET_SIZE);
	UDP.endPacket();
}
