################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FatFs/src/option/syscall.c 

OBJS += \
./Middlewares/Third_Party/FatFs/src/option/syscall.o 

C_DEPS += \
./Middlewares/Third_Party/FatFs/src/option/syscall.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FatFs/src/option/%.o Middlewares/Third_Party/FatFs/src/option/%.su: ../Middlewares/Third_Party/FatFs/src/option/%.c Middlewares/Third_Party/FatFs/src/option/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L496xx -c -I../Core/Inc -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/platform/f7-disco-gcc" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/platform/f7-disco-gcc/mcu" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/mdw" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/config" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/xf/include" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/xf/port" -I"C:/Users/christop.grobety/Bachelor/TB_2023_Logger/Cube/work/STM32CubeIDE-high_speed/../src/xf/port/default-idf" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FatFs-2f-src-2f-option

clean-Middlewares-2f-Third_Party-2f-FatFs-2f-src-2f-option:
	-$(RM) ./Middlewares/Third_Party/FatFs/src/option/syscall.d ./Middlewares/Third_Party/FatFs/src/option/syscall.o ./Middlewares/Third_Party/FatFs/src/option/syscall.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FatFs-2f-src-2f-option

