' 3min timer calc LED version | IchigoJam BASIC 0.8.6-0.9.7
' Copyright (c) 2015 Keiichi Shiga (BALLOON | FU-SEN)
' The MIT License (MIT) - https://gist.github.com/fu-sen/282b65c35d81a7d3b64c
10 CLS:LET N,3:LET Z,60:LED 0
20 LET[10],119:LET[11],36
30 LET[12],93:LET[13],109
40 LET[14],46:LET[15],107
50 LET[16],123:LET[17],37
60 LET[18],127:LET[19],111
70 LOCATE 14,13:? CHR$(1);
80 LOCATE 14,15:? CHR$(1);
90 LET T,N*60*Z-TICK()
100 LET U,TICK()%60/30
110 IF T<0 LET T,0
120 LET S,T/Z
130 LET M,S/60:LET S,S%60
140 LET X,22:LET Y,11:LET A,S%10
150 GOSUB 230
160 LET X,16:LET Y,11:LET A,S/10
170 GOSUB 230
180 LET X,8:LET Y,11:LET A,M
190 GOSUB 230
200 LOCATE 28,17:? CHR$(U);
210 IF T>0 GOTO 90
220 LOCATE 0,19:LED 1:END
230 LET B,0
240 LET [B],[10+A]&(1<<B)<>0
250 LET B,B+1:IF B<7 GOTO 240
260 LOCATE X,Y
270 ? " ";CHR$([0]);
280 ? CHR$([0]);CHR$([0]);
290 LOCATE X,Y+1:? CHR$([1]);
300 ? "   ";CHR$([2]);
310 LOCATE X,Y+2:? CHR$([1]);
320 ? "   ";CHR$([2]);
330 LOCATE X,Y+3
340 ? " ";CHR$([3]);
350 ? CHR$([3]);CHR$([3]);
360 LOCATE X,Y+4:? CHR$([4]);
370 ? "   ";CHR$([5]);
380 LOCATE X,Y+5:? CHR$([4]);
390 ? "   ";CHR$([5]);
400 LOCATE X,Y+6
410 ? " ";CHR$([6]);
420 ? CHR$([6]);CHR$([6]);
430 RETURN