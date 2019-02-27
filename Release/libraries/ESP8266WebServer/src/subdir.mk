################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src/ESP8266WebServer.cpp \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src/ESP8266WebServerSecureAxTLS.cpp \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src/ESP8266WebServerSecureBearSSL.cpp \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src/Parsing.cpp 

LINK_OBJ += \
./libraries/ESP8266WebServer/src/ESP8266WebServer.cpp.o \
./libraries/ESP8266WebServer/src/ESP8266WebServerSecureAxTLS.cpp.o \
./libraries/ESP8266WebServer/src/ESP8266WebServerSecureBearSSL.cpp.o \
./libraries/ESP8266WebServer/src/Parsing.cpp.o 

CPP_DEPS += \
./libraries/ESP8266WebServer/src/ESP8266WebServer.cpp.d \
./libraries/ESP8266WebServer/src/ESP8266WebServerSecureAxTLS.cpp.d \
./libraries/ESP8266WebServer/src/ESP8266WebServerSecureBearSSL.cpp.d \
./libraries/ESP8266WebServer/src/Parsing.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/ESP8266WebServer/src/ESP8266WebServer.cpp.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src/ESP8266WebServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WebServer/src/ESP8266WebServerSecureAxTLS.cpp.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src/ESP8266WebServerSecureAxTLS.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WebServer/src/ESP8266WebServerSecureBearSSL.cpp.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src/ESP8266WebServerSecureBearSSL.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WebServer/src/Parsing.cpp.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src/Parsing.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


