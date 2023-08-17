/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "fatfs.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "fram_func.h"
#include "sd_card_func.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
//#define MEMORY_SIZE	524288
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
 DAC_HandleTypeDef hdac1;

I2C_HandleTypeDef hi2c1;
I2C_HandleTypeDef hi2c2;

SD_HandleTypeDef hsd1;

SPI_HandleTypeDef hspi1;
SPI_HandleTypeDef hspi2;
DMA_HandleTypeDef hdma_spi1_rx;
DMA_HandleTypeDef hdma_spi1_tx;

TIM_HandleTypeDef htim16;

UART_HandleTypeDef huart1;

HCD_HandleTypeDef hhcd_USB_OTG_FS;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DAC1_Init(void);
static void MX_SDMMC1_SD_Init(void);
static void MX_SPI1_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_I2C1_Init(void);
static void MX_I2C2_Init(void);
static void MX_SPI2_Init(void);
static void MX_DMA_Init(void);
static void MX_USB_OTG_FS_HCD_Init(void);
static void MX_TIM16_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
const uint32_t TAB_SIZE = (MEMORY_SIZE/16);
enum color_Led LED_STATE = OFF;
bool reset = true;
bool start = true;
bool acqu = true;
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	//FRESULT res; /* FatFs function common result code */
	TCHAR* fileName0 ;
	TCHAR* fileName1 ;
	TCHAR* fileName2 ;
	TCHAR* fileName3 ;
	TCHAR* file_Init = "INIT.txt";
	uint8_t	 TX_Data_ADC[2];
	uint8_t  TX_FRAM_TEST_R[10] ;
	uint16_t DATA_SD;
	uint16_t DATA_ind [TAB_SIZE/2];
	uint8_t pretrigValue = 100;


	//uint8_t  RX_DATA [524288];   -> TOO BIG

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DAC1_Init();
  MX_SDMMC1_SD_Init();
  MX_SPI1_Init();
  MX_USART1_UART_Init();
  MX_I2C1_Init();
  MX_I2C2_Init();
  MX_SPI2_Init();
  MX_DMA_Init();
  MX_USB_OTG_FS_HCD_Init();
  MX_FATFS_Init();
  MX_TIM16_Init();
  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
   uint8_t start_Add[4] ;
   uint32_t start_Add_tot = 0 ;
   uint32_t Add_= 0;
   uint8_t TX_32 = 0;
   uint16_t boucle = 0;
   uint8_t wtext_0 [100] ;
   uint8_t wtext_1 [100] ;
   uint8_t wtext_2 [100] ;
   uint8_t wtext_3 [100] ;
   uint8_t* receive;
   uint8_t chann;
   double* dataInit_;
   double triggDacValue;
   PIN_reset();
   //FRAM_device(hspi1);
  while (1)
  {
	acqu = true;
	TX_32 = 0;
	start = true;
	HAL_SuspendTick();
	__WFI();

	//--------------------------------------------------RESET FPGA----------------------------------------
	HAL_GPIO_WritePin(FPGA_RESET_GPIO_Port, FPGA_RESET_Pin, GPIO_PIN_RESET);
	HAL_Delay(100);
	HAL_GPIO_WritePin(FPGA_RESET_GPIO_Port, FPGA_RESET_Pin, GPIO_PIN_SET);
	//--------------------------------------------------RESET M---------------------------------------
	PIN_reset();
	//----------------------------------------------------------INIT-------------------------------------------
	//-------------------init file sd --------------------------------------
	sprintf((char*)wtext_0, "FRAM0_%d.bin",boucle);
	fileName0 = (TCHAR*)wtext_0;
	SD_create_file(SDFile, fileName0);
	sprintf((char*)wtext_1, "FRAM1_%d.bin",boucle);
	fileName1 = (TCHAR*)wtext_1;
	SD_create_file(SDFile, fileName1);
	sprintf((char*)wtext_2, "FRAM2_%d.bin",boucle);
	fileName2 = (TCHAR*)wtext_2;
	SD_create_file(SDFile, fileName2);
	sprintf((char*)wtext_3, "FRAM3_%d.bin",boucle);
	fileName3 = (TCHAR*)wtext_3;
	SD_create_file(SDFile, fileName3);

	//-------------------init value------------------------------------------------------------------------
	dataInit_ = initValue(SDFile, file_Init);

	chann = (uint8_t)dataInit_[0];
	if(chann >4){
		chann = 0;
	}
	triggDacValue = dataInit_[1]*(0.02)+1;
	if(triggDacValue <1 || triggDacValue>3.3){
		triggDacValue = 1;
	}
	pretrigValue = (uint8_t)dataInit_[2];
	if(pretrigValue >100){
		pretrigValue = 100;
	}
	//--------------------------------------------------LED CONTROL----------------------------------------
	if(LED_STATE != RED){
		LED_on(BLUE);
	}
	else{
		while(1){
			//reset the systeme
		}
	}

	//-------------------init trigg dc value--------------------------------
	uint32_t triggDac = (uint32_t)((triggDacValue/VREF_VOLTAGE)*DAC_MAX_VALUE);
	HAL_DAC_SetValue(&hdac1, DAC1_CHANNEL_2, DAC_ALIGN_12B_R, triggDac);
	HAL_DAC_Start(&hdac1, DAC1_CHANNEL_2);
	HAL_DAC_SetValue(&hdac1, DAC1_CHANNEL_1, DAC_ALIGN_12B_R, triggDac);
	HAL_DAC_Start(&hdac1, DAC1_CHANNEL_1);

	//-------------------init pretrigg value--------------------------------
	HAL_SPI_Transmit(&hspi1, (uint8_t*)&pretrigValue,1, 100);
	HAL_GPIO_WritePin(FPGA_PRETRIG_GPIO_Port, FPGA_PRETRIG_Pin, GPIO_PIN_SET);
	HAL_SPI_Transmit(&hspi1, (uint8_t*)&pretrigValue,1, 100);
	HAL_GPIO_WritePin(FPGA_PRETRIG_GPIO_Port, FPGA_PRETRIG_Pin, GPIO_PIN_RESET);

	//-------------------init trigg channel --------------------------------------
	setTriggChannel(chann);
	//--------------------------------------------------RESET FRAM REG----------------------------------------
	FRAM_reset_reg(hspi1);
	//--------------------------------------------------WRITE FRAM REG----------------------------------------
	FRAM_write_reg(hspi1);
	//--------------------------------------------------ADC WRITE REG-----------------------------------------
	TX_Data_ADC[0] = 0xA2;
	TX_Data_ADC[1] = 0x80;
	HAL_GPIO_WritePin(SELECTOR_M1_GPIO_Port, SELECTOR_M1_Pin, GPIO_PIN_SET);
	HAL_SPI_Transmit(&hspi1, (uint8_t*)TX_Data_ADC,2, 100);
	HAL_GPIO_WritePin(SELECTOR_M1_GPIO_Port, SELECTOR_M1_Pin, GPIO_PIN_RESET);
	HAL_Delay(100);

	//---------------------------------------------------WRITE FRAM-------------------------------------------
	PIN_reset();
	TX_FRAM_TEST_R[0] = 2;
	for(int i =1; i<5;i++){
	  TX_FRAM_TEST_R[i] = 0;
	}
	TX_FRAM_TEST_R[3] = 0;
	TX_FRAM_TEST_R[4] = 0;
	TX_FRAM_TEST_R[5] = 56;

	HAL_GPIO_WritePin(SELECTOR_M3_GPIO_Port, SELECTOR_M3_Pin, GPIO_PIN_SET);
	HAL_SPI_Transmit(&hspi1, (uint8_t*)TX_FRAM_TEST_R,6, 100);
	HAL_Delay(100);

	//---------------------------------------------------ADC TO FRAM--------------------------------------------
	HAL_GPIO_WritePin(SELECTOR_M1_GPIO_Port, SELECTOR_M1_Pin, GPIO_PIN_SET);
	//---------------------------------------------------SLEEP MODE--------------------------------------------
	//HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON, PWR_SLEEPENTRY_WFI);
	while(acqu){
		HAL_SuspendTick();
		__WFI();
	}
	//HAL_PWR_ENTER
	PIN_reset();
	while(TX_32 <16) {
		  if(TX_32 == 0){
			  PIN_reset();
			  HAL_GPIO_WritePin(SELECTOR_M0_GPIO_Port, SELECTOR_M0_Pin, GPIO_PIN_SET);
			  HAL_GPIO_WritePin(SELECTOR_M1_GPIO_Port, SELECTOR_M1_Pin, GPIO_PIN_SET);
			  HAL_GPIO_WritePin(SELECTOR_M3_GPIO_Port, SELECTOR_M3_Pin, GPIO_PIN_SET);
			  HAL_SPI_Receive(&hspi1, (uint8_t*)start_Add,4, 100);
			  HAL_Delay(100);
			  start_Add_tot = (((uint32_t)start_Add[0])<<24)+(((uint32_t)start_Add[1])<<16)
										+(((uint32_t)start_Add[2])<<8)+((uint32_t)start_Add[3]);
			  PIN_reset();
			  start_Add_tot = start_Add_tot>>12;
			  //start_Add_tot = 0;
			  HAL_TIM_Base_Start_IT(&htim16);
		  }
		 //---------------------------------------------------READ FRAM 0--------------------------------------------
		 for(uint32_t i = 0; i<(TAB_SIZE/2) ; i++){
			  Add_ = i*2+TAB_SIZE*TX_32+(MEMORY_SIZE);
			  if(Add_> MEMORY_SIZE){
				  Add_ = Add_ - MEMORY_SIZE;
			  }
			  //receive = FRAM_read(FRAM_0,i*2+TAB_SIZE*TX_32, hspi1, 2);
			 receive = FRAM_read(FRAM_0, Add_, hspi1, 2);
			 DATA_SD = (((uint16_t)receive[0])<<8)+(uint16_t)(receive[1]);
			 // DATA_SD = (((uint16_t)RX_FAST[i*2])<<8)+(uint16_t)(RX_FAST[i*2+1]);
			  DATA_ind[i] = DATA_SD;
		  }
		  SD_write_data(SDFile, fileName0, DATA_ind);
		  //---------------------------------------------------READ FRAM 1--------------------------------------------
		  for(uint32_t i = 0; i<(TAB_SIZE/2) ; i++){
			  Add_ = i*2+TAB_SIZE*TX_32+(MEMORY_SIZE);
			  if(Add_> MEMORY_SIZE){
				  Add_ = Add_ - MEMORY_SIZE;
			  }
			  receive = FRAM_read(FRAM_1, Add_, hspi1, 2);
			  DATA_SD = (((uint16_t)receive[0])<<8)+(uint16_t)(receive[1]);
			  //DATA_SD = (short)DATA_SD;
			  DATA_ind[i] = DATA_SD;
		  }
		  SD_write_data(SDFile, fileName1, DATA_ind);
		  //---------------------------------------------------READ FRAM 2--------------------------------------------
		  for(uint32_t i = 0; i<TAB_SIZE/2 ; i++){
			  Add_ = i*2+TAB_SIZE*TX_32+(MEMORY_SIZE-start_Add_tot);
			  if(Add_> MEMORY_SIZE){
				  Add_ = Add_ - MEMORY_SIZE;
			  }
			  receive = FRAM_read(FRAM_2,Add_, hspi1, 2);
			  DATA_SD = (((uint16_t)receive[0])<<8)+(uint16_t)(receive[1]);
			  //DATA_SD = (short)DATA_SD;
			  DATA_ind[i] = DATA_SD;
		  }
		  SD_write_data(SDFile, fileName2, DATA_ind);
		  //---------------------------------------------------READ FRAM 3--------------------------------------------
		  for(uint32_t i = 0; i<TAB_SIZE/2 ; i++){
			  Add_ = i*2+TAB_SIZE*TX_32+(MEMORY_SIZE-start_Add_tot);
			  if(Add_> MEMORY_SIZE){
				  Add_ = Add_ - MEMORY_SIZE;
			  }
			  receive = FRAM_read(FRAM_3,Add_, hspi1, 2);
			  DATA_SD = (((uint16_t)receive[0])<<8)+(uint16_t)(receive[1]);
			  //DATA_SD = (short)DATA_SD;
			  DATA_ind[i] = DATA_SD;
		  }
		  SD_write_data(SDFile, fileName3, DATA_ind);
		  TX_32++;
		  //receive = FRAM_read(FRAM_3, TX_32, hspi1, 2);
		  //DATA_SD = (((uint16_t)receive[0])<<8)+(uint16_t)(receive[1]);
		  //DATA_SD = (short)DATA_SD;
		  //SD_write_data(SDFile, fileName3, DATA_SD);
	  }
	  if(TX_32==16){
		  HAL_TIM_Base_Stop(&htim16);
		  if(LED_STATE != RED){
			  LED_off();
		  	  LED_on(GREEN); //6
		  }
		  else{
			  LED_off();
			  LED_on(RED);
		  }
	  }
	  boucle++;
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI48|RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.HSI48State = RCC_HSI48_ON;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 32;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief DAC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_DAC1_Init(void)
{

  /* USER CODE BEGIN DAC1_Init 0 */

  /* USER CODE END DAC1_Init 0 */

  DAC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN DAC1_Init 1 */

  /* USER CODE END DAC1_Init 1 */

  /** DAC Initialization
  */
  hdac1.Instance = DAC1;
  if (HAL_DAC_Init(&hdac1) != HAL_OK)
  {
    Error_Handler();
  }

  /** DAC channel OUT1 config
  */
  sConfig.DAC_SampleAndHold = DAC_SAMPLEANDHOLD_DISABLE;
  sConfig.DAC_Trigger = DAC_TRIGGER_NONE;
  sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
  sConfig.DAC_ConnectOnChipPeripheral = DAC_CHIPCONNECT_DISABLE;
  sConfig.DAC_UserTrimming = DAC_TRIMMING_FACTORY;
  if (HAL_DAC_ConfigChannel(&hdac1, &sConfig, DAC_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }

  /** DAC channel OUT2 config
  */
  if (HAL_DAC_ConfigChannel(&hdac1, &sConfig, DAC_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN DAC1_Init 2 */

  /* USER CODE END DAC1_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x10707DBC;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Analogue filter
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Digital filter
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief I2C2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C2_Init(void)
{

  /* USER CODE BEGIN I2C2_Init 0 */

  /* USER CODE END I2C2_Init 0 */

  /* USER CODE BEGIN I2C2_Init 1 */

  /* USER CODE END I2C2_Init 1 */
  hi2c2.Instance = I2C2;
  hi2c2.Init.Timing = 0x10707DBC;
  hi2c2.Init.OwnAddress1 = 0;
  hi2c2.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c2.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c2.Init.OwnAddress2 = 0;
  hi2c2.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c2.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c2.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c2) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Analogue filter
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c2, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Digital filter
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c2, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C2_Init 2 */

  /* USER CODE END I2C2_Init 2 */

}

/**
  * @brief SDMMC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SDMMC1_SD_Init(void)
{

  /* USER CODE BEGIN SDMMC1_Init 0 */

  /* USER CODE END SDMMC1_Init 0 */

  /* USER CODE BEGIN SDMMC1_Init 1 */

  /* USER CODE END SDMMC1_Init 1 */
  hsd1.Instance = SDMMC1;
  hsd1.Init.ClockEdge = SDMMC_CLOCK_EDGE_RISING;
  hsd1.Init.ClockBypass = SDMMC_CLOCK_BYPASS_DISABLE;
  hsd1.Init.ClockPowerSave = SDMMC_CLOCK_POWER_SAVE_DISABLE;
  hsd1.Init.BusWide = SDMMC_BUS_WIDE_1B;
  hsd1.Init.HardwareFlowControl = SDMMC_HARDWARE_FLOW_CONTROL_DISABLE;
  hsd1.Init.ClockDiv = 4;
  /* USER CODE BEGIN SDMMC1_Init 2 */

  /* USER CODE END SDMMC1_Init 2 */

}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_HIGH;
  hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_8;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 7;
  hspi1.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi1.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief SPI2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  /* SPI2 parameter configuration*/
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_1LINE;
  hspi2.Init.DataSize = SPI_DATASIZE_4BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 7;
  hspi2.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi2.Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

/**
  * @brief TIM16 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM16_Init(void)
{

  /* USER CODE BEGIN TIM16_Init 0 */

  /* USER CODE END TIM16_Init 0 */

  /* USER CODE BEGIN TIM16_Init 1 */

  /* USER CODE END TIM16_Init 1 */
  htim16.Instance = TIM16;
  htim16.Init.Prescaler = 6400-1;
  htim16.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim16.Init.Period = 1000;
  htim16.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim16.Init.RepetitionCounter = 0;
  htim16.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim16) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM16_Init 2 */

  /* USER CODE END TIM16_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief USB_OTG_FS Initialization Function
  * @param None
  * @retval None
  */
static void MX_USB_OTG_FS_HCD_Init(void)
{

  /* USER CODE BEGIN USB_OTG_FS_Init 0 */

  /* USER CODE END USB_OTG_FS_Init 0 */

  /* USER CODE BEGIN USB_OTG_FS_Init 1 */

  /* USER CODE END USB_OTG_FS_Init 1 */
  hhcd_USB_OTG_FS.Instance = USB_OTG_FS;
  hhcd_USB_OTG_FS.Init.Host_channels = 12;
  hhcd_USB_OTG_FS.Init.speed = HCD_SPEED_FULL;
  hhcd_USB_OTG_FS.Init.dma_enable = DISABLE;
  hhcd_USB_OTG_FS.Init.phy_itface = HCD_PHY_EMBEDDED;
  hhcd_USB_OTG_FS.Init.Sof_enable = DISABLE;
  if (HAL_HCD_Init(&hhcd_USB_OTG_FS) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USB_OTG_FS_Init 2 */

  /* USER CODE END USB_OTG_FS_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel2_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel2_IRQn);
  /* DMA1_Channel3_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel3_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel3_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, FPGA_RESET_Pin|FPGA_PRETRIG_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, SELECTOR_M0_Pin|SELECTOR_M1_Pin|SELECTOR_M2_Pin|SELECTOR_M3_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, UI_LED_G_Pin|UI_LED_R_Pin|UI_LED_B_Pin|TRIG_SRC0_Pin
                          |TRIG_SRC1_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : WAKE_UP_Pin */
  GPIO_InitStruct.Pin = WAKE_UP_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(WAKE_UP_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : FPGA_RESET_Pin FPGA_PRETRIG_Pin */
  GPIO_InitStruct.Pin = FPGA_RESET_Pin|FPGA_PRETRIG_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : SELECTOR_M0_Pin SELECTOR_M1_Pin SELECTOR_M2_Pin SELECTOR_M3_Pin */
  GPIO_InitStruct.Pin = SELECTOR_M0_Pin|SELECTOR_M1_Pin|SELECTOR_M2_Pin|SELECTOR_M3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : UI_LED_G_Pin UI_LED_R_Pin UI_LED_B_Pin TRIG_SRC0_Pin
                           TRIG_SRC1_Pin */
  GPIO_InitStruct.Pin = UI_LED_G_Pin|UI_LED_R_Pin|UI_LED_B_Pin|TRIG_SRC0_Pin
                          |TRIG_SRC1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : FPGA_DONE_Pin */
  GPIO_InitStruct.Pin = FPGA_DONE_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(FPGA_DONE_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : SD_DETECT_INT_Pin */
  GPIO_InitStruct.Pin = SD_DETECT_INT_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(SD_DETECT_INT_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : USB_VBUS_INT_Pin */
  GPIO_InitStruct.Pin = USB_VBUS_INT_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(USB_VBUS_INT_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : ARM_BUTTON_Pin */
  GPIO_InitStruct.Pin = ARM_BUTTON_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(ARM_BUTTON_GPIO_Port, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI4_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(EXTI4_IRQn);

  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

}

/* USER CODE BEGIN 4 */
#ifdef __GNUC__
  /* With GCC, small printf (option LD Linker->Libraries->Small printf
     set to 'Yes') calls __io_putchar() */
int __io_putchar(int ch)
#else
int fputc(int ch, FILE *f)
#endif /* __GNUC__ */
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the UART3 and Loop until the end of transmission */
  HAL_UART_Transmit(&huart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
  return ch;
}
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){
	if(htim== &htim16){
		HAL_GPIO_TogglePin(UI_LED_B_GPIO_Port, UI_LED_B_Pin);
	}
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
