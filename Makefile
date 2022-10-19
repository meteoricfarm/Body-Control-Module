CC=gcc
OBJECTS=adc/adc.o can/CAN_driver.o int/int.o lcd/lcd.o lin/LIN_driver.o motor/motor.o source/MAIN_module.o
TARGET=app.out

all : $(TARGET)

$(TARGET) : $(OBJECTS)
	$(CC) -o $@ $^
  
clean : 
	rm adc/*.o can/*.o int/*.o lcd/*.o lin/*.o motor/*.o source/*.o $(TARGET)