################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/F446RE/src/apds9960.c \
../Drivers/F446RE/src/ds1307.c \
../Drivers/F446RE/src/gpio_driver.c \
../Drivers/F446RE/src/i2c_driver.c \
../Drivers/F446RE/src/lcd.c \
../Drivers/F446RE/src/rcc_driver.c \
../Drivers/F446RE/src/spi_driver.c \
../Drivers/F446RE/src/uart_driver.c 

OBJS += \
./Drivers/F446RE/src/apds9960.o \
./Drivers/F446RE/src/ds1307.o \
./Drivers/F446RE/src/gpio_driver.o \
./Drivers/F446RE/src/i2c_driver.o \
./Drivers/F446RE/src/lcd.o \
./Drivers/F446RE/src/rcc_driver.o \
./Drivers/F446RE/src/spi_driver.o \
./Drivers/F446RE/src/uart_driver.o 

C_DEPS += \
./Drivers/F446RE/src/apds9960.d \
./Drivers/F446RE/src/ds1307.d \
./Drivers/F446RE/src/gpio_driver.d \
./Drivers/F446RE/src/i2c_driver.d \
./Drivers/F446RE/src/lcd.d \
./Drivers/F446RE/src/rcc_driver.d \
./Drivers/F446RE/src/spi_driver.d \
./Drivers/F446RE/src/uart_driver.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/F446RE/src/%.o Drivers/F446RE/src/%.su: ../Drivers/F446RE/src/%.c Drivers/F446RE/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I"C:/Users/SOUMYA/Desktop/Fire-Gaurd/Fire_classifier_CubeIDE/Fire_F446RE/Drivers/F446RE/src" -I"C:/Users/SOUMYA/Desktop/Fire-Gaurd/Fire_classifier_CubeIDE/Fire_F446RE/Drivers/F446RE/inc" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../X-CUBE-AI/App -I../Middlewares/ST/AI/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-F446RE-2f-src

clean-Drivers-2f-F446RE-2f-src:
	-$(RM) ./Drivers/F446RE/src/apds9960.d ./Drivers/F446RE/src/apds9960.o ./Drivers/F446RE/src/apds9960.su ./Drivers/F446RE/src/ds1307.d ./Drivers/F446RE/src/ds1307.o ./Drivers/F446RE/src/ds1307.su ./Drivers/F446RE/src/gpio_driver.d ./Drivers/F446RE/src/gpio_driver.o ./Drivers/F446RE/src/gpio_driver.su ./Drivers/F446RE/src/i2c_driver.d ./Drivers/F446RE/src/i2c_driver.o ./Drivers/F446RE/src/i2c_driver.su ./Drivers/F446RE/src/lcd.d ./Drivers/F446RE/src/lcd.o ./Drivers/F446RE/src/lcd.su ./Drivers/F446RE/src/rcc_driver.d ./Drivers/F446RE/src/rcc_driver.o ./Drivers/F446RE/src/rcc_driver.su ./Drivers/F446RE/src/spi_driver.d ./Drivers/F446RE/src/spi_driver.o ./Drivers/F446RE/src/spi_driver.su ./Drivers/F446RE/src/uart_driver.d ./Drivers/F446RE/src/uart_driver.o ./Drivers/F446RE/src/uart_driver.su

.PHONY: clean-Drivers-2f-F446RE-2f-src

