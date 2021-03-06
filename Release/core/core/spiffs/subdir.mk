################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_cache.c \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_check.c \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_gc.c \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_hydrogen.c \
/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_nucleus.c 

C_DEPS += \
./core/core/spiffs/spiffs_cache.c.d \
./core/core/spiffs/spiffs_check.c.d \
./core/core/spiffs/spiffs_gc.c.d \
./core/core/spiffs/spiffs_hydrogen.c.d \
./core/core/spiffs/spiffs_nucleus.c.d 

AR_OBJ += \
./core/core/spiffs/spiffs_cache.c.o \
./core/core/spiffs/spiffs_check.c.o \
./core/core/spiffs/spiffs_gc.c.o \
./core/core/spiffs/spiffs_hydrogen.c.o \
./core/core/spiffs/spiffs_nucleus.c.o 


# Each subdirectory must supply rules for building sources it contributes
core/core/spiffs/spiffs_cache.c.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_cache.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/MFRC522/1.4.3/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/core/spiffs/spiffs_check.c.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_check.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/MFRC522/1.4.3/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/core/spiffs/spiffs_gc.c.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_gc.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/MFRC522/1.4.3/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/core/spiffs/spiffs_hydrogen.c.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_hydrogen.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/MFRC522/1.4.3/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core/core/spiffs/spiffs_nucleus.c.o: /home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266/spiffs/spiffs_nucleus.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/tools/xtensa-lx106-elf-gcc/2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-I/home/ubuntu/sloeber//arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-I/home/ubuntu/sloeber-workspace/rfid_access_controll_esp8266/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fexceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=1460 -DLWIP_FEATURES=1 -DLWIP_IPV6=0 -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_SSL -DDEBUG_ESP_TLS_MEM -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_CORE -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_ESP_OOM -DARDUINO=10802 -DARDUINO_ESP8266_WEMOS_D1MINI -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="ESP8266_WEMOS_D1MINI"  -DFLASHMODE_DIO  -DESP8266   -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/cores/esp8266" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/variants/d1_mini" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WebServer/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/ESP8266WiFi/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/PubSubClient/2.7.0/src" -I"/home/ubuntu/sloeber/arduinoPlugin/libraries/MFRC522/1.4.3/src" -I"/home/ubuntu/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/libraries/SPI" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


