EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduino
LIBS:DS3231_Module
LIBS:e-exampl-DS3231-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ARDUINO_NANO ARDUINO1
U 1 1 5A898082
P 5450 3600
F 0 "ARDUINO1" H 5450 4450 70  0000 C CNN
F 1 "ARDUINO_NANO" V 5450 3600 70  0000 C CNN
F 2 "" H 5450 3600 60  0000 C CNN
F 3 "" H 5450 3600 60  0000 C CNN
	1    5450 3600
	1    0    0    -1  
$EndComp
$Comp
L DS3231_Module U1
U 1 1 5A898425
P 7300 3100
F 0 "U1" H 7300 3100 60  0000 C CNN
F 1 "DS3231_Module" H 7300 3350 60  0000 C CNN
F 2 "" H 7300 3100 60  0001 C CNN
F 3 "" H 7300 3100 60  0001 C CNN
	1    7300 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A898534
P 6900 3850
F 0 "#PWR01" H 6900 3600 50  0001 C CNN
F 1 "GND" H 6900 3700 50  0000 C CNN
F 2 "" H 6900 3850 50  0001 C CNN
F 3 "" H 6900 3850 50  0001 C CNN
	1    6900 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A89854C
P 6650 3100
F 0 "#PWR02" H 6650 2850 50  0001 C CNN
F 1 "GND" H 6650 2950 50  0000 C CNN
F 2 "" H 6650 3100 50  0001 C CNN
F 3 "" H 6650 3100 50  0001 C CNN
	1    6650 3100
	1    0    0    -1  
$EndComp
Text GLabel 6200 3150 2    60   Input ~ 0
5V
Text GLabel 6800 3650 0    60   Input ~ 0
5V
Wire Wire Line
	6050 3550 7000 3550
Wire Wire Line
	6050 2950 6650 2950
Wire Wire Line
	6650 2950 6650 3100
Wire Wire Line
	7000 3750 6900 3750
Wire Wire Line
	6900 3750 6900 3850
Wire Wire Line
	6050 3450 7000 3450
Wire Wire Line
	7000 3650 6800 3650
Wire Wire Line
	6200 3150 6050 3150
NoConn ~ 6050 2850
NoConn ~ 6050 3050
NoConn ~ 6050 3250
NoConn ~ 6050 3350
NoConn ~ 6050 3650
NoConn ~ 6050 3850
NoConn ~ 6050 3750
NoConn ~ 6050 3950
NoConn ~ 6050 4050
NoConn ~ 6050 4150
NoConn ~ 6050 4250
NoConn ~ 4850 4250
NoConn ~ 4850 4150
NoConn ~ 4850 4050
NoConn ~ 4850 3950
NoConn ~ 4850 3850
NoConn ~ 4850 3750
NoConn ~ 4850 3650
NoConn ~ 4850 3550
NoConn ~ 4850 3450
NoConn ~ 4850 3350
NoConn ~ 4850 3250
NoConn ~ 4850 3150
NoConn ~ 4850 3050
NoConn ~ 4850 2950
NoConn ~ 4850 2850
NoConn ~ 7000 3250
NoConn ~ 7000 3350
$EndSCHEMATC
