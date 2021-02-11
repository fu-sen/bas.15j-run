' Change to IchigoJam ja kana font | IchigoJam BASIC 1.3.2b13+
'
' Source(#D00-#DFF) https://gist.github.com/fu-sen/21400660612ad674f660b056fb07ece3
' Original https://github.com/IchigoJam/c4ij/blob/master/src/main-exkbd.c
' and BASIC Program
' Copyright (c) 2019 Taisuke Fukuno / Keiichi Shiga (BALLOON | FU-SEN)
' The MIT License (MIT) - https://gist.github.com/fu-sen/7e55ee56a67e07d804db9379178e3cb5
'
' IchigoJam Font(#E00-#FFF) https://fukuno.jig.jp/app/IchigoJam/charmap-v12.html
' CC BY IchigoJam https://ichigojam.net/ Licensed by jig.jp https://jig.jp/

POKE#D00,240,181,195,176,1,145,114,182,6,34,232,35,17,0,27,136
POKE#D10,53,32,152,71,4,0,96,30,132,65,128,39,0,37,6,52
POKE#D20,35,1,0,147,127,0,230,35,27,136,13,45,85,209,58,0
POKE#D30,224,32,1,153,0,1,9,24,2,168,152,71,232,35,34,0
POKE#D40,27,136,33,0,50,32,152,71,0,155,2,169,234,24,234,35
POKE#D50,27,136,18,2,30,0,51,32,59,0,1,53,176,71,16,45
POKE#D60,225,209,5,34,216,53,43,136,17,0,50,32,152,71,5,34
POKE#D70,43,136,160,37,17,0,52,32,152,71,0,155,237,1,27,2
POKE#D80,0,147,0,155,26,74,2,168,153,24,230,35,128,34,73,25
POKE#D90,27,136,82,0,152,71,232,38,5,34,51,136,17,0,50,32
POKE#DA0,152,71,234,35,27,136,42,0,31,0,128,35,2,169,91,0
POKE#DB0,51,32,184,71,192,35,1,53,255,53,219,1,157,66,224,209
POKE#DC0,51,136,34,0,33,0,50,32,152,71,51,136,34,0,33,0
POKE#DD0,52,32,152,71,98,182,67,176,240,189,14,45,3,209,58,0
POKE#DE0,1,153,240,32,166,231,41,0,80,49,9,2,58,0,163,231
POKE#DF0,0,176,255,255,0,0,0,0,0,0,0,0,0,0,0,0
POKE#E00,68,40,124,16,124,16,16,0,0,0,0,0,112,80,112,0
POKE#E10,14,8,8,0,0,0,0,0,0,0,0,0,16,16,112,0
POKE#E20,0,0,0,0,64,32,16,0,0,0,0,24,24,0,0,0
POKE#E30,0,126,2,126,2,4,24,0,0,0,0,124,20,16,32,0
POKE#E40,0,0,0,12,112,16,16,0,0,0,16,124,68,4,24,0
POKE#E50,0,0,0,124,16,16,124,0,0,0,8,124,24,40,72,0
POKE#E60,0,0,32,124,36,32,32,0,0,0,0,56,8,8,124,0
POKE#E70,0,0,60,4,60,4,60,0,0,0,0,84,84,4,8,0
POKE#E80,0,0,0,0,126,0,0,0,0,254,2,20,16,16,96,0
POKE#E90,0,6,24,104,8,8,8,0,16,126,66,66,2,4,24,0
POKE#EA0,0,124,16,16,16,16,254,0,4,4,126,12,20,36,68,0
POKE#EB0,16,16,126,18,18,34,70,0,16,16,126,16,126,16,16,0
POKE#EC0,0,62,34,66,2,4,56,0,32,32,62,68,4,4,56,0
POKE#ED0,0,0,126,2,2,2,126,0,0,68,254,68,68,4,56,0
POKE#EE0,0,112,2,114,2,4,120,0,0,126,2,4,8,20,98,0
POKE#EF0,0,64,254,68,72,64,62,0,0,66,66,36,4,8,16,0
POKE#F00,0,62,34,82,10,4,56,0,4,56,8,254,8,8,48,0
POKE#F10,0,82,82,82,2,4,24,0,0,124,0,254,8,8,112,0
POKE#F20,64,64,64,112,76,64,64,0,0,8,254,8,8,8,112,0
POKE#F30,0,0,124,0,0,0,254,0,0,126,2,52,8,20,98,0
POKE#F40,16,126,2,4,24,118,16,0,0,2,2,2,2,4,120,0
POKE#F50,0,40,40,68,68,130,130,0,0,64,78,112,64,64,62,0
POKE#F60,0,126,2,2,2,4,56,0,0,0,32,80,136,4,2,0
POKE#F70,0,16,254,16,84,84,146,0,0,254,2,68,40,16,8,0
POKE#F80,0,112,14,112,14,112,14,0,0,16,16,32,36,66,254,0
POKE#F90,0,2,34,20,8,20,98,0,0,124,32,254,32,32,30,0
POKE#FA0,32,32,254,34,36,32,32,0,0,0,60,4,4,4,126,0
POKE#FB0,0,124,4,124,4,4,124,0,0,126,0,126,2,4,56,0
POKE#FC0,0,68,68,68,4,8,48,0,0,80,80,80,82,148,152,0
POKE#FD0,0,32,32,34,36,40,48,0,0,126,66,66,66,66,126,0
POKE#FE0,0,126,66,66,2,4,56,0,0,64,34,2,2,4,120,0
POKE#FF0,16,72,32,0,0,0,0,0,112,80,112,0,0,0,0,0
1 'Change IchigoJam ja(kana) font
2 ?USR(#D00,0)
