/*
 * isrs.c
 *
 *  Created on: Jun 30, 2023
 *      Author: christop.grobety
 */

#include "stm32l4xx_hal.h"
#include "main.h"
#include "fram_func.h"

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if(GPIO_Pin == FPGA_DONE_Pin){
		//---------------------------------------------------RECEIVE ADD------------------------------------------
		LED_on(BLUE);
		start = true;
		HAL_ResumeTick();
		acqu = false;
		//sleep_ = 1;
	}
	else if(GPIO_Pin == WAKE_UP_Pin ){
		//---------------------------------------------------START ACQU------------------------------------------
		if(start){
			HAL_ResumeTick();
			start = false;
		}
	}
	else if(GPIO_Pin == ARM_BUTTON_Pin){
		//---------------------------------------------------RESET SYSTEM------------------------------------------
		if(reset){
			reset = false;
			HAL_NVIC_SystemReset();
		}
	}
}
