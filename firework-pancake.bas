' fireworks | PanCake / IchigoJam BASIC
' Copyright (c) 2015 Keiichi Shiga (BALLOON | FU-SEN)
' The MIT License (MIT) - https://gist.github.com/fu-sen/282b65c35d81a7d3b64c
10 'PanCake ����
20 CLV:VIDEO 0
25 IF VER()>11000 UART 1
30 ? CHR$(128,4,5,1)
40 ? CHR$(128,4,0,0)
50 LET [0],6,1,4,4
60 LET [4],9,5,10,3
70 LET [8],10,1,7,7
80 LET T,20+RND(40)
90 FOR Y=35 TO 11 STEP -1
100 ? CHR$(128,8,1,T,Y,T,Y,1)
110 IF INKEY() GOTO 330
120 WAIT 11
130 ? CHR$(128,8,1,T,Y,T,Y,0)
140 NEXT
150 FOR I=0 TO 10
160 FOR J=0 TO 10 STEP 2
170 LET A,[J]*I/10
180 LET B,[J+1]*I/10
190 LET X,A:LET Y,B
200 LET C,1:GOSUB 350
210 LET X,[J+50]:LET Y,[J+51]
220 LET C,0:GOSUB 350
230 LET [J+50],A:LET [J+51],B
240 IF INKEY() GOTO 330 
250 NEXT:NEXT
260 FOR J=0 TO 10 STEP 2
270 LET X,[J+50]:LET Y,[J+51]
280 LET C,0:GOSUB 350
290 IF INKEY() GOTO 330
300 NEXT
310 WAIT RND(120)
320 GOTO 80
330 ? CHR$(128,4,5,0):VIDEO 1
340 END
350 LET D,X:LET E,Y:GOSUB 380
360 LET E,X:LET D,Y:GOSUB 380
370 RETURN
380 LET O,T+D:LET P,10+E
390 GOSUB 470
400 LET O,T+D:LET P,10-E
410 GOSUB 470
420 LET O,T-D:LET P,10+E
430 GOSUB 470
440 LET O,T-D:LET P,10-E
450 GOSUB 470
460 RETURN
470 ? CHR$(128,8,1,O,P,O,P,C)
480 RETURN