/*
 * apds9960.h
 *
 *  Created on: Jun 12, 2023
 *      Author: SOUMYA
 */

#ifndef INC_APDS9960_H_
#define INC_APDS9960_H_

#include "F446RE.h"

/*Application configurable items */
#define APDS9960_I2C  			    I2C1
#define APDS9960_I2C_GPIO_PORT      GPIOB
#define APDS9960_I2C_SDA_PIN 		GPIO_PIN_NO_7
#define APDS9960_I2C_SCL_PIN 		GPIO_PIN_NO_6
#define APDS9960_I2C_SPEED 		    I2C_SCL_SPEED_SM
#define APDS9960_I2C_PUPD			GPIO_PIN_PU

#define APDS9960_I2C_ADDR       0x39

#define APDS9960_ATIME          0x81
#define APDS9960_CONTROL        0x8F
#define APDS9960_ENABLE         0x80

/*Register addresses */
#define APDS9960_CDATAL         0x94
#define APDS9960_CDATAH         0x95
#define APDS9960_RDATAL         0x96
#define APDS9960_RDATAH         0x97
#define APDS9960_GDATAL         0x98
#define APDS9960_GDATAH         0x99
#define APDS9960_BDATAL         0x9A
#define APDS9960_BDATAH         0x9B

/* Bit fields */
#define APDS9960_PON            0x01
#define APDS9960_AEN            0x02
#define APDS9960_PEN            0x04
#define APDS9960_WEN            0x08
#define APSD9960_AIEN           0x10
#define APDS9960_PIEN           0x20
#define APDS9960_GEN            0x40
#define APDS9960_GVALID         0x01

/* ALS Gain (AGAIN) values */
#define AGAIN_1X                0
#define AGAIN_4X                1
#define AGAIN_16X               2
#define AGAIN_64X               3
#define DEFAULT_ATIME           219     // 103ms
#define DEFAULT_AGAIN           AGAIN_4X

typedef struct{
	uint16_t Colour_Clear;
	uint16_t Colour_Red;
	uint16_t Colour_Green;
	uint16_t Colour_Blue;
}color_handle_t;

//Function prototypes
uint8_t APDS9960_RGB_INIT(void);

uint8_t APDS9960_read(uint8_t reg_addr);
void APDS9960_write(uint8_t value, uint8_t reg_addr);

uint16_t APDS9960_readAmbientLight();
uint16_t APDS9960_readRedLight();
uint16_t APDS9960_readGreenLight();
uint16_t APDS9960_readBlueLight();

void APDS9960_RGB_value(color_handle_t *rgb_c_data);

#endif /* INC_APDS9960_H_ */
