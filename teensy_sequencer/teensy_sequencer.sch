EESchema Schematic File Version 4
LIBS:teensy_sequencer-cache
EELAYER 29 0
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
L power:+5V #PWR07
U 1 1 5DD1C18E
P 7450 3350
F 0 "#PWR07" H 7450 3200 50  0001 C CNN
F 1 "+5V" H 7465 3523 50  0000 C CNN
F 2 "" H 7450 3350 50  0001 C CNN
F 3 "" H 7450 3350 50  0001 C CNN
	1    7450 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DD1E30F
P 7450 3550
F 0 "R4" H 7520 3596 50  0000 L CNN
F 1 "10K" V 7450 3450 50  0000 L CNN
F 2 "" V 7380 3550 50  0001 C CNN
F 3 "~" H 7450 3550 50  0001 C CNN
	1    7450 3550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW3
U 1 1 5DD1EE61
P 7650 3850
F 0 "SW3" H 7650 4000 50  0000 C CNN
F 1 "SW_Push_Dual" H 7650 3600 50  0000 C CNN
F 2 "" H 7650 4050 50  0001 C CNN
F 3 "~" H 7650 4050 50  0001 C CNN
	1    7650 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR08
U 1 1 5DD1F8B1
P 8150 3850
F 0 "#PWR08" H 8150 3600 50  0001 C CNN
F 1 "GNDREF" H 8155 3677 50  0000 C CNN
F 2 "" H 8150 3850 50  0001 C CNN
F 3 "" H 8150 3850 50  0001 C CNN
	1    8150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3350 7450 3400
Wire Wire Line
	7450 3700 7450 3850
Wire Wire Line
	7850 3850 8000 3850
Text GLabel 8000 3700 1    50   Input ~ 0
Teensy_Pin_0
Wire Wire Line
	8000 3700 8000 3850
Connection ~ 8000 3850
Wire Wire Line
	8000 3850 8150 3850
$Comp
L power:+5V #PWR09
U 1 1 5DD26BB6
P 8900 3350
F 0 "#PWR09" H 8900 3200 50  0001 C CNN
F 1 "+5V" H 8915 3523 50  0000 C CNN
F 2 "" H 8900 3350 50  0001 C CNN
F 3 "" H 8900 3350 50  0001 C CNN
	1    8900 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DD26BC0
P 8900 3550
F 0 "R5" H 8970 3596 50  0000 L CNN
F 1 "10K" V 8900 3450 50  0000 L CNN
F 2 "" V 8830 3550 50  0001 C CNN
F 3 "~" H 8900 3550 50  0001 C CNN
	1    8900 3550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW4
U 1 1 5DD26BCA
P 9100 3850
F 0 "SW4" H 9100 4000 50  0000 C CNN
F 1 "SW_Push_Dual" H 9100 3600 50  0000 C CNN
F 2 "" H 9100 4050 50  0001 C CNN
F 3 "~" H 9100 4050 50  0001 C CNN
	1    9100 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR010
U 1 1 5DD26BD4
P 9600 3850
F 0 "#PWR010" H 9600 3600 50  0001 C CNN
F 1 "GNDREF" H 9605 3677 50  0000 C CNN
F 2 "" H 9600 3850 50  0001 C CNN
F 3 "" H 9600 3850 50  0001 C CNN
	1    9600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3350 8900 3400
Wire Wire Line
	8900 3700 8900 3850
Wire Wire Line
	9300 3850 9450 3850
Text GLabel 9450 3700 1    50   Input ~ 0
Teensy_Pin_1
Wire Wire Line
	9450 3700 9450 3850
Connection ~ 9450 3850
Wire Wire Line
	9450 3850 9600 3850
$Comp
L power:+5V #PWR03
U 1 1 5DD2DE72
P 4350 3300
F 0 "#PWR03" H 4350 3150 50  0001 C CNN
F 1 "+5V" H 4365 3473 50  0000 C CNN
F 2 "" H 4350 3300 50  0001 C CNN
F 3 "" H 4350 3300 50  0001 C CNN
	1    4350 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DD2DE7C
P 4350 3500
F 0 "R2" H 4420 3546 50  0000 L CNN
F 1 "10K" V 4350 3400 50  0000 L CNN
F 2 "" V 4280 3500 50  0001 C CNN
F 3 "~" H 4350 3500 50  0001 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 5DD2DE86
P 4550 3800
F 0 "SW1" H 4550 3950 50  0000 C CNN
F 1 "SW_Push_Dual" H 4550 3550 50  0000 C CNN
F 2 "" H 4550 4000 50  0001 C CNN
F 3 "~" H 4550 4000 50  0001 C CNN
	1    4550 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 5DD2DE90
P 5050 3800
F 0 "#PWR04" H 5050 3550 50  0001 C CNN
F 1 "GNDREF" H 5055 3627 50  0000 C CNN
F 2 "" H 5050 3800 50  0001 C CNN
F 3 "" H 5050 3800 50  0001 C CNN
	1    5050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3300 4350 3350
Wire Wire Line
	4350 3650 4350 3800
Wire Wire Line
	4750 3800 4900 3800
Text GLabel 4900 3650 1    50   Input ~ 0
Teensy_Pin_3
Wire Wire Line
	4900 3650 4900 3800
Connection ~ 4900 3800
Wire Wire Line
	4900 3800 5050 3800
$Comp
L power:+5V #PWR05
U 1 1 5DD2DEA1
P 5900 3300
F 0 "#PWR05" H 5900 3150 50  0001 C CNN
F 1 "+5V" H 5915 3473 50  0000 C CNN
F 2 "" H 5900 3300 50  0001 C CNN
F 3 "" H 5900 3300 50  0001 C CNN
	1    5900 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DD2DEAB
P 5900 3500
F 0 "R3" H 5970 3546 50  0000 L CNN
F 1 "10K" V 5900 3400 50  0000 L CNN
F 2 "" V 5830 3500 50  0001 C CNN
F 3 "~" H 5900 3500 50  0001 C CNN
	1    5900 3500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW2
U 1 1 5DD2DEB5
P 6100 3800
F 0 "SW2" H 6100 3950 50  0000 C CNN
F 1 "SW_Push_Dual" H 6100 3550 50  0000 C CNN
F 2 "" H 6100 4000 50  0001 C CNN
F 3 "~" H 6100 4000 50  0001 C CNN
	1    6100 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR06
U 1 1 5DD2DEBF
P 6600 3800
F 0 "#PWR06" H 6600 3550 50  0001 C CNN
F 1 "GNDREF" H 6605 3627 50  0000 C CNN
F 2 "" H 6600 3800 50  0001 C CNN
F 3 "" H 6600 3800 50  0001 C CNN
	1    6600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3300 5900 3350
Wire Wire Line
	5900 3650 5900 3800
Wire Wire Line
	6300 3800 6450 3800
Text GLabel 6450 3650 1    50   Input ~ 0
Teensy_Pin_2
Wire Wire Line
	6450 3650 6450 3800
Connection ~ 6450 3800
Wire Wire Line
	6450 3800 6600 3800
Text Label 8900 4350 0    79   ~ 0
StepFwd
Text Label 4500 4350 0    79   ~ 0
Note_Up
Text Label 6050 4350 0    79   ~ 0
Note_Down
$Comp
L power:+5V #PWR01
U 1 1 5DD4831F
P 2800 3400
F 0 "#PWR01" H 2800 3250 50  0001 C CNN
F 1 "+5V" H 2815 3573 50  0000 C CNN
F 2 "" H 2800 3400 50  0001 C CNN
F 3 "" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR02
U 1 1 5DD49191
P 2800 3900
F 0 "#PWR02" H 2800 3650 50  0001 C CNN
F 1 "GNDREF" H 2805 3727 50  0000 C CNN
F 2 "" H 2800 3900 50  0001 C CNN
F 3 "" H 2800 3900 50  0001 C CNN
	1    2800 3900
	1    0    0    -1  
$EndComp
Text GLabel 2400 3650 0    50   Input ~ 0
Teensy_Pin_10
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5DD4A166
P 3100 3650
F 0 "J1" H 3072 3582 50  0000 R CNN
F 1 "Conn_01x03_Male" H 3072 3673 50  0000 R CNN
F 2 "" H 3100 3650 50  0001 C CNN
F 3 "~" H 3100 3650 50  0001 C CNN
	1    3100 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 3400 2800 3550
Wire Wire Line
	2800 3550 2900 3550
Wire Wire Line
	2800 3900 2800 3750
Wire Wire Line
	2800 3750 2900 3750
Text Label 2350 3100 0    67   ~ 0
NeoPixel_Ring_16
$Comp
L Device:R R1
U 1 1 5DD4E98D
P 2650 3650
F 0 "R1" V 2750 3600 50  0000 L CNN
F 1 "470" V 2650 3600 50  0000 L CNN
F 2 "" V 2580 3650 50  0001 C CNN
F 3 "~" H 2650 3650 50  0001 C CNN
	1    2650 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3650 2500 3650
Wire Wire Line
	2800 3650 2900 3650
Text Label 7500 4350 0    79   ~ 0
PlayPause
$Comp
L teensy_seq:Teensy_3_1 U1
U 1 1 5DE8E8E7
P 3600 5350
F 0 "U1" H 3350 4650 50  0000 L CNN
F 1 "Teensy_3_1" H 3350 6150 50  0000 L CNN
F 2 "" H 3600 5350 50  0001 C CNN
F 3 "" H 3600 5350 50  0001 C CNN
	1    3600 5350
	1    0    0    -1  
$EndComp
Text GLabel 3100 5850 0    50   Input ~ 0
Teensy_Pin_10
Text GLabel 3100 5050 0    50   Input ~ 0
Teensy_Pin_3
Text GLabel 3100 4950 0    50   Input ~ 0
Teensy_Pin_2
Text GLabel 3100 4750 0    50   Input ~ 0
Teensy_Pin_0
Text GLabel 3100 4850 0    50   Input ~ 0
Teensy_Pin_1
Wire Wire Line
	3100 5850 3250 5850
Wire Wire Line
	3100 5050 3250 5050
Wire Wire Line
	3100 4950 3250 4950
Wire Wire Line
	3100 4850 3250 4850
Wire Wire Line
	3100 4750 3250 4750
$Comp
L power:GNDREF #PWR011
U 1 1 5DE9A2C8
P 2250 4750
F 0 "#PWR011" H 2250 4500 50  0001 C CNN
F 1 "GNDREF" H 2255 4577 50  0000 C CNN
F 2 "" H 2250 4750 50  0001 C CNN
F 3 "" H 2250 4750 50  0001 C CNN
	1    2250 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5DE9C1C8
P 4150 4550
F 0 "#PWR012" H 4150 4400 50  0001 C CNN
F 1 "+5V" H 4165 4723 50  0000 C CNN
F 2 "" H 4150 4550 50  0001 C CNN
F 3 "" H 4150 4550 50  0001 C CNN
	1    4150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4650 4150 4650
Wire Wire Line
	2250 4650 2250 4750
Wire Wire Line
	4150 4650 4150 4550
Wire Wire Line
	2250 4650 3250 4650
$EndSCHEMATC
