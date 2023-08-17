/*
 * sd_card_func.h
 *
 *  Created on: Jul 7, 2023
 *      Author: christop.grobety
 */

#ifndef INC_SD_CARD_FUNC_H_
#define INC_SD_CARD_FUNC_H_
#include "main.h"
#include "fatfs.h"
#include "fram_func.h"
#include <stdbool.h>

/**
 * @brief Create a file in the SD card with a name and a type (.bin,.txt,...)
 * @param sd_file: SD_card emplacement
 * @param fileName: name and type of the file
*/
void SD_create_file(FIL sd_file, TCHAR* fileName);

/**
 * @brief Write a table of 16 bits of values in a SD's file
 * @param sd_file: SD_card emplacement
 * @param fileName: name and type of the file
 * @param data: pointer on the first adress of the table to write
*/
void SD_write_data(FIL sd_file, TCHAR* fileName, uint16_t* data);

/**
 * @brief Read all the value in a SD's file
 * @param sd_file: SD_card emplacement
 * @param fileName: name and type of the file
 * @return the pointer on the first adress of the data's file table
*/
uint8_t* SD_read_data(FIL sd_file, TCHAR* fileName);

/**
 * @brief Convert all the values(char) in the SD's file receive in 3 double values
 * @param sd_file: SD_card emplacement
 * @param fileName: name and type of the file
 * @return the pointer on the first adress of the InitTrigger's values
*/
double* initValue(FIL sd_file, TCHAR* fileName);


#endif /* INC_SD_CARD_FUNC_H_ */
