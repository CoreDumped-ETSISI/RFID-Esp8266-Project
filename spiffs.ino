#include "Arduino.h"
#include <FS.h>   // Include the SPIFFS library

void setup_spiffs(){
	SPIFFS.begin();
}

File get_file(const char* file){
	return SPIFFS.open(file, "a");
}


