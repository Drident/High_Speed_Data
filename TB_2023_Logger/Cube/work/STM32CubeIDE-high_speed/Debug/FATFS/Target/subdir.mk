################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FATFS/Target/bsp_driver_sd.c \
../FATFS/Target/fatfs_platform.c \
../FATFS/Target/sd_diskio.c 

OBJS += \
./FATFS/Target/bsp_driver_sd.o \
./FATFS/Target/fatfs_platform.o \
./FATFS/Target/sd_diskio.o 

C_DEPS += \
./FATFS/Target/bsp_driver_sd.d \
./FATFS/Target/fatfs_platform.d \
./FATFS/Target/sd_diskio.d 


# Each subdirectory must supply rules for building sources it contributes
FATFS/Target/%.o FATFS/Target/%.su: ../FATFS/Target/%.c FATFS/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L496xx -c -I../Core/Inc -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/platform/f7-disco-gcc" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/platform/f7-disco-gcc/mcu" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/mdw" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/config" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/xf/include" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/xf/port" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/xf/port/default-idf" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FATFS-2f-Target

clean-FATFS-2f-Target:
	-$(RM) ./FATFS/Target/bsp_driver_sd.d ./FATFS/Target/bsp_driver_sd.o ./FATFS/Target/bsp_driver_sd.su ./FATFS/Target/fatfs_platform.d ./FATFS/Target/fatfs_platform.o ./FATFS/Target/fatfs_platform.su ./FATFS/Target/sd_diskio.d ./FATFS/Target/sd_diskio.o ./FATFS/Target/sd_diskio.su

.PHONY: clean-FATFS-2f-Target

