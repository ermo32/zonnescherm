EESchema Schematic File Version 2
LIBS:zonnescherm-rescue
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
LIBS:ESP8266
LIBS:valves
LIBS:modex
LIBS:zonnescherm-cache
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
L ESP-12E U3
U 1 1 57851970
P 4400 3800
F 0 "U3" H 4400 3700 50  0000 C CNN
F 1 "ESP-12E" H 4400 3900 50  0000 C CNN
F 2 "ESP8266:ESP-12E" H 4400 3800 50  0001 C CNN
F 3 "" H 4400 3800 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L ULN2003A U4
U 1 1 57851D26
P 6850 3850
F 0 "U4" H 6850 3950 50  0000 C CNN
F 1 "ULN2003A" H 6850 3750 50  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 6850 3850 50  0001 C CNN
F 3 "" H 6850 3850 50  0000 C CNN
	1    6850 3850
	1    0    0    -1  
$EndComp
$Comp
L FTR-LYCA K1
U 1 1 5785259B
P 8600 2100
F 0 "K1" H 8600 2250 50  0000 C CNN
F 1 "K1-ON/OFF" H 8600 1600 50  0000 C CNN
F 2 "modex:FTR_LY" H 8600 2100 50  0001 C CNN
F 3 "" H 8600 2100 50  0000 C CNN
	1    8600 2100
	1    0    0    -1  
$EndComp
$Comp
L FTR-LYCA K2
U 1 1 57852684
P 8600 2900
F 0 "K2" H 8600 3050 50  0000 C CNN
F 1 "K1-UP/DOWN" H 8600 2400 50  0000 C CNN
F 2 "modex:FTR_LY" H 8600 2900 50  0001 C CNN
F 3 "" H 8600 2900 50  0000 C CNN
	1    8600 2900
	1    0    0    -1  
$EndComp
$Comp
L FTR-LYCA K3
U 1 1 5785271F
P 8600 3700
F 0 "K3" H 8600 3850 50  0000 C CNN
F 1 "K2-ON/OFF" H 8600 3200 50  0000 C CNN
F 2 "modex:FTR_LY" H 8600 3700 50  0001 C CNN
F 3 "" H 8600 3700 50  0000 C CNN
	1    8600 3700
	1    0    0    -1  
$EndComp
$Comp
L FTR-LYCA K4
U 1 1 5785279E
P 8600 4550
F 0 "K4" H 8600 4700 50  0000 C CNN
F 1 "K2-UP/DOWN" H 8600 4050 50  0000 C CNN
F 2 "modex:FTR_LY" H 8600 4550 50  0001 C CNN
F 3 "" H 8600 4550 50  0000 C CNN
	1    8600 4550
	1    0    0    -1  
$EndComp
$Comp
L IRM-05-5 U1
U 1 1 57852A7E
P 2700 1550
F 0 "U1" H 2850 1354 50  0000 C CNN
F 1 "IRM-05-5" H 2700 1750 50  0000 C CNN
F 2 "modex:IRM-05" H 2700 1550 50  0001 C CNN
F 3 "" H 2700 1550 50  0000 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P2
U 1 1 57852E69
P 10550 2050
F 0 "P2" H 10550 2300 50  0000 C CNN
F 1 "CONN_MAINS" V 10650 2050 50  0000 C CNN
F 2 "modex:AKL-330-4" H 10550 2050 50  0001 C CNN
F 3 "" H 10550 2050 50  0000 C CNN
	1    10550 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 57852F08
P 10550 3000
F 0 "P3" H 10550 3250 50  0000 C CNN
F 1 "CONN_SUNSHADE1" V 10650 3000 50  0000 C CNN
F 2 "modex:AKL-330-4" H 10550 3000 50  0001 C CNN
F 3 "" H 10550 3000 50  0000 C CNN
	1    10550 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P4
U 1 1 57852F81
P 10550 4650
F 0 "P4" H 10550 4900 50  0000 C CNN
F 1 "CONN_SUNSHADE2" V 10650 4650 50  0000 C CNN
F 2 "modex:AKL-330-4" H 10550 4650 50  0001 C CNN
F 3 "" H 10550 4650 50  0000 C CNN
	1    10550 4650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 57853221
P 1650 3800
F 0 "R6" V 1730 3800 50  0000 C CNN
F 1 "12k" V 1650 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 3800 50  0001 C CNN
F 3 "" H 1650 3800 50  0000 C CNN
	1    1650 3800
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 578532C4
P 1650 3600
F 0 "R5" V 1730 3600 50  0000 C CNN
F 1 "12k" V 1650 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 3600 50  0001 C CNN
F 3 "" H 1650 3600 50  0000 C CNN
	1    1650 3600
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5785332B
P 1650 3400
F 0 "R4" V 1730 3400 50  0000 C CNN
F 1 "12k" V 1650 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 3400 50  0001 C CNN
F 3 "" H 1650 3400 50  0000 C CNN
	1    1650 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 578533AE
P 1650 3200
F 0 "R3" V 1730 3200 50  0000 C CNN
F 1 "12k" V 1650 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 3200 50  0001 C CNN
F 3 "" H 1650 3200 50  0000 C CNN
	1    1650 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 578533F7
P 1650 4000
F 0 "R7" V 1730 4000 50  0000 C CNN
F 1 "12k" V 1650 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 4000 50  0001 C CNN
F 3 "" H 1650 4000 50  0000 C CNN
	1    1650 4000
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 578534E0
P 4400 5200
F 0 "C3" H 4425 5300 50  0000 L CNN
F 1 "100n" H 4425 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4438 5050 50  0001 C CNN
F 3 "" H 4400 5200 50  0000 C CNN
	1    4400 5200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57853591
P 3750 5200
F 0 "C2" H 3775 5300 50  0000 L CNN
F 1 "100n" H 3775 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3788 5050 50  0001 C CNN
F 3 "" H 3750 5200 50  0000 C CNN
	1    3750 5200
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 578535F8
P 5000 1850
F 0 "C4" H 5025 1950 50  0000 L CNN
F 1 "10u/16V" H 5025 1750 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.3" H 5038 1700 50  0001 C CNN
F 3 "" H 5000 1850 50  0000 C CNN
	1    5000 1850
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 57853699
P 3550 1850
F 0 "C1" H 3575 1950 50  0000 L CNN
F 1 "100u/16V" H 3575 1750 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.3" H 3588 1700 50  0001 C CNN
F 3 "" H 3550 1850 50  0000 C CNN
	1    3550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1500 3950 1500
Wire Wire Line
	3550 1500 3550 1700
Wire Wire Line
	3100 1600 3100 2150
Wire Wire Line
	3100 2150 5000 2150
Wire Wire Line
	3550 2150 3550 2000
$Comp
L LM1117-3.3-RESCUE-zonnescherm U2
U 1 1 57854505
P 4250 1500
F 0 "U2" H 4350 1250 50  0000 C CNN
F 1 "LM1117-3.3" H 4250 1750 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-3Lead" H 4250 1500 50  0001 C CNN
F 3 "" H 4250 1500 50  0000 C CNN
	1    4250 1500
	1    0    0    -1  
$EndComp
Connection ~ 3550 1500
Wire Wire Line
	4250 2150 4250 1800
Connection ~ 3550 2150
Wire Wire Line
	4550 1500 5400 1500
Wire Wire Line
	5000 1500 5000 1700
Wire Wire Line
	5000 2000 5000 2250
Connection ~ 4250 2150
Connection ~ 5000 1500
Wire Wire Line
	3750 1500 3750 1150
Wire Wire Line
	3750 1150 5400 1150
Connection ~ 3750 1500
Text GLabel 5400 1150 2    60   Output ~ 0
P5V
Text GLabel 5400 1500 2    60   Output ~ 0
P3V3
$Comp
L GND #PWR01
U 1 1 5785489F
P 5000 2250
F 0 "#PWR01" H 5000 2000 50  0001 C CNN
F 1 "GND" H 5000 2100 50  0000 C CNN
F 2 "" H 5000 2250 50  0000 C CNN
F 3 "" H 5000 2250 50  0000 C CNN
	1    5000 2250
	1    0    0    -1  
$EndComp
Connection ~ 5000 2150
$Comp
L F_Small F1
U 1 1 578549B6
P 10000 1900
F 0 "F1" H 9960 1960 50  0000 L CNN
F 1 "5AT" H 9880 1840 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" H 10000 1900 50  0001 C CNN
F 3 "" H 10000 1900 50  0000 C CNN
	1    10000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1500 2300 1500
Wire Wire Line
	2300 1600 2200 1600
Wire Wire Line
	2200 1600 2200 2150
Wire Wire Line
	2200 2150 1750 2150
Text GLabel 1750 1500 0    60   Input ~ 0
P
Text GLabel 1750 2150 0    60   Input ~ 0
N
Text GLabel 3500 4200 0    60   Input ~ 0
P3V3
$Comp
L GND #PWR02
U 1 1 5785509B
P 5450 4350
F 0 "#PWR02" H 5450 4100 50  0001 C CNN
F 1 "GND" H 5450 4200 50  0000 C CNN
F 2 "" H 5450 4350 50  0000 C CNN
F 3 "" H 5450 4350 50  0000 C CNN
	1    5450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4200 5450 4200
Wire Wire Line
	5450 4200 5450 4350
Text GLabel 7500 4250 2    60   Input ~ 0
P5V
Wire Wire Line
	1350 3800 1500 3800
Wire Wire Line
	1350 2800 1350 3800
Wire Wire Line
	1350 3200 1500 3200
Wire Wire Line
	1500 3400 1350 3400
Connection ~ 1350 3400
Wire Wire Line
	1500 3600 1350 3600
Connection ~ 1350 3600
Connection ~ 1350 3200
Text GLabel 1150 2800 0    60   Input ~ 0
P3V3
$Comp
L GND #PWR03
U 1 1 5787F342
P 1150 4100
F 0 "#PWR03" H 1150 3850 50  0001 C CNN
F 1 "GND" H 1150 3950 50  0000 C CNN
F 2 "" H 1150 4100 50  0000 C CNN
F 3 "" H 1150 4100 50  0000 C CNN
	1    1150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4100 1150 4000
Wire Wire Line
	1150 4000 1500 4000
Wire Wire Line
	1800 3200 2100 3200
Wire Wire Line
	1800 3400 2100 3400
Wire Wire Line
	1800 3600 2100 3600
Wire Wire Line
	1800 3800 2100 3800
Wire Wire Line
	1800 4000 2100 4000
Text GLabel 2100 3200 2    60   Output ~ 0
GPIO0
Text GLabel 2100 3400 2    60   Output ~ 0
GPIO2
Text GLabel 2100 3600 2    60   Output ~ 0
EN
Text GLabel 2100 3800 2    60   Output ~ 0
XRES
Text GLabel 2100 4000 2    60   Output ~ 0
GPIO15
Text GLabel 5300 3900 2    60   Input ~ 0
GPIO0
Text GLabel 5300 4000 2    60   Input ~ 0
GPIO2
Text GLabel 3500 3700 0    60   Input ~ 0
EN
Text GLabel 3500 3500 0    60   Input ~ 0
XRES
Text GLabel 5300 4100 2    60   Input ~ 0
GPIO15
$Comp
L GND #PWR04
U 1 1 5787FA28
P 4400 5450
F 0 "#PWR04" H 4400 5200 50  0001 C CNN
F 1 "GND" H 4400 5300 50  0000 C CNN
F 2 "" H 4400 5450 50  0000 C CNN
F 3 "" H 4400 5450 50  0000 C CNN
	1    4400 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5050 4400 4950
Wire Wire Line
	4400 4950 4650 4950
Wire Wire Line
	4400 5350 4400 5450
Text GLabel 4650 4950 2    60   Output ~ 0
XRES
Wire Wire Line
	1350 4750 1550 4750
Wire Wire Line
	1350 4750 1350 5800
$Comp
L GND #PWR05
U 1 1 5787FF4F
P 1350 5800
F 0 "#PWR05" H 1350 5550 50  0001 C CNN
F 1 "GND" H 1350 5650 50  0000 C CNN
F 2 "" H 1350 5800 50  0000 C CNN
F 3 "" H 1350 5800 50  0000 C CNN
	1    1350 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4750 2300 4750
$Comp
L GND #PWR06
U 1 1 57880BFE
P 3750 5450
F 0 "#PWR06" H 3750 5200 50  0001 C CNN
F 1 "GND" H 3750 5300 50  0000 C CNN
F 2 "" H 3750 5450 50  0000 C CNN
F 3 "" H 3750 5450 50  0000 C CNN
	1    3750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5050 3750 4950
Wire Wire Line
	3750 4950 3950 4950
Wire Wire Line
	3750 5350 3750 5450
Text GLabel 3950 4950 2    60   Output ~ 0
P3V3
Wire Wire Line
	7700 2450 8200 2450
Wire Wire Line
	8000 2450 8000 4900
Wire Wire Line
	8000 4900 8200 4900
Wire Wire Line
	8200 4050 8000 4050
Connection ~ 8000 4050
Wire Wire Line
	8200 3250 8000 3250
Connection ~ 8000 3250
Connection ~ 8000 2450
Text GLabel 7700 2450 0    60   Input ~ 0
P5V
Wire Wire Line
	7800 2350 8200 2350
Wire Wire Line
	7800 2350 7800 3450
Wire Wire Line
	7800 3450 7500 3450
Wire Wire Line
	8200 3150 7900 3150
Wire Wire Line
	7900 3150 7900 3550
Wire Wire Line
	7900 3550 7500 3550
Wire Wire Line
	7500 3650 7900 3650
Wire Wire Line
	7900 3650 7900 3950
Wire Wire Line
	7900 3950 8200 3950
Wire Wire Line
	7500 3750 7800 3750
Wire Wire Line
	7800 3750 7800 4800
Wire Wire Line
	7800 4800 8200 4800
Wire Wire Line
	8200 4600 8200 4300
Wire Wire Line
	8200 4300 9100 4300
Wire Wire Line
	9100 4300 9100 3850
Wire Wire Line
	9100 3850 9000 3850
Wire Wire Line
	8200 3750 8100 3750
Wire Wire Line
	8100 3750 8100 3500
Wire Wire Line
	8100 3500 9400 3500
Wire Wire Line
	9000 4500 10350 4500
Wire Wire Line
	9000 4700 9300 4700
Wire Wire Line
	8200 2950 8100 2950
Wire Wire Line
	8100 2950 8100 2650
Wire Wire Line
	8100 2650 9100 2650
Wire Wire Line
	9100 2650 9100 2250
Wire Wire Line
	9100 2250 9000 2250
Wire Wire Line
	8200 2150 8100 2150
Wire Wire Line
	8100 2150 8100 1900
Wire Wire Line
	9000 2850 10350 2850
Wire Wire Line
	9000 3050 9300 3050
Wire Wire Line
	9300 3050 9300 2950
Wire Wire Line
	9300 2950 10350 2950
Wire Wire Line
	9300 4700 9300 4600
Wire Wire Line
	9300 4600 10350 4600
Wire Wire Line
	9500 2100 10350 2100
Wire Wire Line
	9500 1700 9500 4700
Wire Wire Line
	9500 4700 10350 4700
Wire Wire Line
	9600 4800 10350 4800
Wire Wire Line
	9600 1500 9600 4800
Wire Wire Line
	9600 2200 10350 2200
Wire Wire Line
	10350 3150 9600 3150
Connection ~ 9600 3150
Wire Wire Line
	10350 3050 9500 3050
Connection ~ 9500 3050
Text GLabel 7850 1900 0    60   Output ~ 0
P
Text GLabel 7850 1700 0    60   Output ~ 0
N
Connection ~ 8100 1900
Wire Wire Line
	9500 1700 7850 1700
Connection ~ 9500 2100
Text GLabel 7850 1500 0    60   Output ~ 0
PE
Wire Wire Line
	7850 1500 9600 1500
Connection ~ 9600 2200
Wire Wire Line
	9400 3500 9400 1900
Connection ~ 9400 1900
Wire Wire Line
	3050 2950 5800 2950
Wire Wire Line
	5800 2950 5800 3450
Wire Wire Line
	5800 3450 6200 3450
Wire Wire Line
	6200 3850 6100 3850
Wire Wire Line
	6100 3850 6100 4350
Wire Wire Line
	6200 3950 6100 3950
Connection ~ 6100 3950
Wire Wire Line
	6200 4050 6100 4050
Connection ~ 6100 4050
$Comp
L GND #PWR07
U 1 1 578902F2
P 6100 4350
F 0 "#PWR07" H 6100 4100 50  0001 C CNN
F 1 "GND" H 6100 4200 50  0000 C CNN
F 2 "" H 6100 4350 50  0000 C CNN
F 3 "" H 6100 4350 50  0000 C CNN
	1    6100 4350
	1    0    0    -1  
$EndComp
Text GLabel 2300 5050 2    60   Output ~ 0
GPIO0
Text GLabel 2300 5200 2    60   Output ~ 0
GPIO2
Text GLabel 2300 4750 2    60   Output ~ 0
GPIO5
Text GLabel 2300 4900 2    60   Output ~ 0
GPIO4
Text GLabel 5300 3800 2    60   Input ~ 0
GPIO4
Text GLabel 5300 3700 2    60   Input ~ 0
GPIO5
Wire Wire Line
	3050 2950 3050 4000
Wire Wire Line
	3050 4000 3500 4000
Wire Wire Line
	3500 4100 3100 4100
Wire Wire Line
	3100 4100 3100 3000
Wire Wire Line
	3100 3000 5750 3000
Wire Wire Line
	5750 3000 5750 3550
Wire Wire Line
	5750 3550 6200 3550
Wire Wire Line
	3150 3900 3500 3900
Wire Wire Line
	3150 3050 3150 3900
Wire Wire Line
	3150 3050 5700 3050
Wire Wire Line
	5700 3050 5700 3650
Wire Wire Line
	5700 3650 6200 3650
Text GLabel 6200 3750 0    60   Input ~ 0
GPIO15
$Comp
L R R2
U 1 1 57892315
P 1650 3000
F 0 "R2" V 1730 3000 50  0000 C CNN
F 1 "12k" V 1650 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 3000 50  0001 C CNN
F 3 "" H 1650 3000 50  0000 C CNN
	1    1650 3000
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 578923F6
P 1650 2800
F 0 "R1" V 1730 2800 50  0000 C CNN
F 1 "12k" V 1650 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 2800 50  0001 C CNN
F 3 "" H 1650 2800 50  0000 C CNN
	1    1650 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 3000 1500 3000
Wire Wire Line
	1150 2800 1500 2800
Connection ~ 1350 3000
Wire Wire Line
	1800 3000 2100 3000
Wire Wire Line
	1800 2800 2100 2800
Text GLabel 2100 3000 2    60   Output ~ 0
GPIO5
Text GLabel 2100 2800 2    60   Output ~ 0
GPIO4
Connection ~ 1350 2800
Wire Wire Line
	10350 1900 10100 1900
Wire Wire Line
	7850 1900 9900 1900
$Comp
L CONN_01X06 P1
U 1 1 5789388D
P 6150 5700
F 0 "P1" H 6150 6050 50  0000 C CNN
F 1 "ARDUINO-ISP" V 6250 5700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 6150 5700 50  0001 C CNN
F 3 "" H 6150 5700 50  0000 C CNN
	1    6150 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 57893968
P 5800 6150
F 0 "#PWR08" H 5800 5900 50  0001 C CNN
F 1 "GND" H 5800 6000 50  0000 C CNN
F 2 "" H 5800 6150 50  0000 C CNN
F 3 "" H 5800 6150 50  0000 C CNN
	1    5800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6150 5800 5950
Wire Wire Line
	5800 5950 5950 5950
Text GLabel 5300 3500 2    60   Output ~ 0
TXD
Text GLabel 5300 3600 2    60   Input ~ 0
RXD
Text GLabel 5700 5550 0    60   Input ~ 0
TXD
Text GLabel 5700 5650 0    60   Output ~ 0
RXD
Wire Wire Line
	5700 5550 5950 5550
Wire Wire Line
	5950 5650 5700 5650
$Comp
L CONN_02X04 P5
U 1 1 5790E325
P 1800 4900
F 0 "P5" H 1800 5150 50  0000 C CNN
F 1 "SWITCHES" H 1800 4650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0000 C CNN
	1    1800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4850 1350 4850
Connection ~ 1350 4850
Wire Wire Line
	1550 4950 1350 4950
Connection ~ 1350 4950
Wire Wire Line
	1550 5050 1350 5050
Connection ~ 1350 5050
Wire Wire Line
	2050 4850 2200 4850
Wire Wire Line
	2200 4850 2200 4900
Wire Wire Line
	2200 4900 2300 4900
Wire Wire Line
	2050 4950 2200 4950
Wire Wire Line
	2200 4950 2200 5050
Wire Wire Line
	2200 5050 2300 5050
Wire Wire Line
	2050 5050 2150 5050
Wire Wire Line
	2150 5050 2150 5200
Wire Wire Line
	2150 5200 2300 5200
$Comp
L C C5
U 1 1 5790FD2E
P 3100 5200
F 0 "C5" H 3125 5300 50  0000 L CNN
F 1 "100n" H 3125 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3138 5050 50  0001 C CNN
F 3 "" H 3100 5200 50  0000 C CNN
	1    3100 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5790FDB2
P 3100 5450
F 0 "#PWR09" H 3100 5200 50  0001 C CNN
F 1 "GND" H 3100 5300 50  0000 C CNN
F 2 "" H 3100 5450 50  0000 C CNN
F 3 "" H 3100 5450 50  0000 C CNN
	1    3100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5450 3100 5350
Wire Wire Line
	3100 5050 3100 4950
Wire Wire Line
	3100 4950 3300 4950
Text GLabel 3300 4950 2    60   Output ~ 0
P5V
Wire Wire Line
	10350 2000 10200 2000
Wire Wire Line
	10200 2000 10200 1900
Connection ~ 10200 1900
$EndSCHEMATC
