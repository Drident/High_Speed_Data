/*
 * sd_card_func.c
 *
 *  Created on: Jul 7, 2023
 *      Author: christop.grobety
 */

#include "sd_card_func.h"
#include <math.h>

FRESULT res_sd;
uint32_t byteswritten_sd, bytesread_sd;
uint8_t rtext_ [_MAX_SS] ;
uint8_t wtext_2 [100] ;
uint8_t test [2] ;
double init_Value [4] ;

void SD_create_file(FIL sd_file, TCHAR* fileName){
	res_sd = f_mount(&SDFatFS, (TCHAR const*)SDPath, 0) ;
	if(res_sd != FR_OK){
		LED_on(RED);
	}
	else{
	  //Open file for writing (Create)
	  res_sd = f_open(&sd_file, fileName, (FA_CREATE_ALWAYS | FA_WRITE));
	  if(res_sd != FR_OK){
		  LED_on(RED);
	  }
	  else{
		  //LED_on(BLUE);
		  f_close(&sd_file);
	  }
	}
	f_mount(&SDFatFS, (TCHAR const*)NULL, 0);
}

void SD_write_data(FIL sd_file, TCHAR* fileName, uint16_t* data){
	//sprintf((char*)wtext_, "%d \n",data);
	res_sd = f_mount(&SDFatFS, (TCHAR const*)SDPath, 0) ;
	if(res_sd != FR_OK){
		LED_on(RED);
	}
	else{
	//Open file for writing (Create)
	  res_sd = f_open(&sd_file, fileName, (FA_OPEN_ALWAYS | FA_WRITE));
	  if(res_sd != FR_OK){
		  LED_on(RED);
	  }
	  else{
		//Write to the text file
		  if(f_lseek(&sd_file, f_size(&sd_file)) == FR_OK){
			  //res_sd = f_write(&sd_file, wtext_, strlen((char *)wtext_), (void *)&byteswritten_sd);
			  res_sd = f_write(&sd_file, data, (TAB_SIZE), (void *)&byteswritten_sd);
			if((byteswritten_sd == 0) || (res_sd != FR_OK)){
				  LED_on(RED);
			}
			else{
				//LED_on(BLUE);
				f_close(&sd_file);
			}
		  }
		}
	}
	f_mount(&SDFatFS, (TCHAR const*)NULL, 0);
}

uint8_t* SD_read_data(FIL sd_file, TCHAR* fileName){
	res_sd = f_mount(&SDFatFS, (TCHAR const*)SDPath, 0) ;
		if(res_sd != FR_OK){
			LED_on(RED);
		}
		else{
		//Open file for writing (Create)
		  res_sd = f_open(&sd_file, "INIT.txt", FA_OPEN_ALWAYS | FA_READ);
		  if(res_sd != FR_OK){
			  LED_on(RED);
		  }
		  else{
			//Write to the text file
			  if(f_lseek(&sd_file, 0) == FR_OK){
				  while(bytesread_sd == 0){
					  res_sd = f_read(&sd_file, rtext_, sizeof(rtext_), (UINT *)&bytesread_sd);
				  }
				  //f_gets(wtext_, sd_file.fptr, &sd_file);
				if((bytesread_sd == 0) || (res_sd != FR_OK)){
					  LED_on(RED);
				}
				else{
					//LED_on(BLUE);
					f_close(&sd_file);
				}
			  }
			}
		}
		f_mount(&SDFatFS, (TCHAR const*)NULL, 0);
		return (uint8_t*)&rtext_;
}
double* initValue(FIL sd_file, TCHAR* fileName){
	uint8_t* data = SD_read_data(sd_file, fileName);
	uint8_t value[_MAX_SS/2];
	uint8_t number = 0;
	uint8_t number_ = 0;
	uint8_t pow_ = 0;
	uint8_t div_ = 0;
	bool fraction = false;
	for(uint32_t i = 0 ; i<_MAX_SS; i++){
		if(data[i] >= '0' && data[i] <= '9' ){
			value[number] = data[i]-'0';
			number++;
			pow_++;
		}
		else if(data[i] == '.' || data[i] == ','){
			fraction = true;
			div_ = pow_;
		}
		else if(data[i] == '\n' || data[i] == '\0'){
			for(uint8_t j = 0; j<number ; j++){
				init_Value[number_] = init_Value[number_] + value[j]*pow(10,number-j-1);
			}
			if(fraction){
				fraction = false;
				init_Value[number_] = init_Value[number_]/(pow(10,number-div_));
			}
			pow_ = 0;
			div_ = 0;
			number = 0;
			number_++;
			if(data[i] == '\0'){
				break;
			}
		}
	}
	return (double*)&init_Value;
}

