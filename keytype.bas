' Random Key Typing | IchigoJam BASIC 0.9.4-
' Copyright (c) 2015 Keiichi Shiga (BALLOON | FU-SEN)
' The MIT License (MIT) - https://gist.github.com/fu-sen/282b65c35d81a7d3b64c
10 'Random Key Typing
20 CLS:CLV
30 LET[0],18,0,0,0,2,0,4,0,6,0
40 LET[10],8,0,10,0,12,0,14,0
50 LET[18],16,0,2,4,11,6,7,6,6
60 LET[27],4,5,2,8,4,10,4,12,4
70 LET[36],15,2,14,4,16,4,18,4
80 LET[44],15,6,13,6,17,2,19,2
90 LET[52],1,2,7,2,4,4,9,2
100 LET[60],13,2,9,6,3,2,5,6
110 LET[68],11,2,3,6
120 LC[I*2],[I*2+1]:?".";
130 I=I+1:IF I<36 GOTO 110
140 I=RND(35)
150 C=48+I:IF I>9 C=C+7
160 LC[I*2],[I*2+1]:? CHR$(C);
170 K=INKEY():IF K=0 GOTO 170
180 IF K>96 K=K-32
190 IF K<>C BEEP 50,15:GOTO 170
200 BEEP 5
210 LC[I*2],[I*2+1]:?".";
220 GOTO 140