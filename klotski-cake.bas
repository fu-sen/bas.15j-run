' Klotski | IchigoCake BASIC
' Copyright (c) 2020 Keiichi Shiga (BALLOON | FU-SEN)
' The MIT License (MIT) - https://gist.github.com/fu-sen/52ddb94228758739c310f51cba047d82
POKE#1780,255,128,128,128,128,128,128,128
POKE#1788,255,1,1,1,1,1,1,1
POKE#1790,128,128,128,128,128,128,128,255
POKE#1798,1,1,1,1,1,1,1,255
POKE#17A0,255,129,129,129,129,129,129,129
POKE#17B0,129,129,129,129,129,129,129,255
POKE#17C0,255,128,128,128,128,128,128,255
POKE#17C8,255,1,1,1,1,1,1,255
POKE#17E0,255,129,129,129,129,129,129,255
POKE#1800,240,0,241,0,242,0,243,0
POKE#1808,244,0,0,0,246,0,0,0
POKE#1810,248,0,249,0,0,0,0,0
POKE#1818,252,0,0,0,0,0,0,0

10 'ﾊｺｲﾘ ﾑｽﾒ
20 VIDEO 6:CLS
30 COPY #780,#1780,160
40 ?CHR$(244,240,241,244)
50 ?CHR$(246,242,243,246)
60 ?CHR$(244,248,249,244)
70 ?CHR$(246,252,252,246)
80 ?CHR$(252,1,1,252)
90 ?CHR$(0,2,2,0);
100 X=2:Y=4:M=0
110 LC X,Y,1
120 K=INKEY():IF !K CONT
130 IF K<>32 GOTO 150
140 M=1-M:?CHR$(17);:GOTO 120
150 IF !M GOTO 370
160 P=SCR(X,Y):IF P=1 GOTO 370
170 P=P-240:Q=P%4:P=P-Q
180 A=X-Q%2:B=Y-Q/2
190 FOR S=0 TO 3
200 IF ![P+S] GOTO 220
210 LC A+S%2,B+S/2:?CHR$(1)
220 NEXT
230 C=A-(K=28)+(K=29)
240 D=B-(K=30)+(K=31):N=0
250 FOR S=0 TO 3
260 IF ![P+S] GOTO 280
270 IF SCR(C+S%2,D+S/2)<>1 N=1
280 NEXT
290 IF N=1 C=A:D=B
300 FOR S=0 TO 3
310 IF ![P+S] GOTO 340
320 LC C+S%2,D+S/2
330 ?CHR$([P+S])
340 NEXT
350 IF SCR(1,3)<>240 GOTO 370
360 LC 3,5:END
370 X=(X-(K=28)+(K=29)+4)%4
380 Y=(Y-(K=30)+(K=31)+5)%5
390 GOTO 110
