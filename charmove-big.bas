100 '��׸�����޶�
105 IF VER()>12233 VIDEO 3
110 CLV:CLS
120 POKE #E0*8+0,`00011000
130 POKE #E0*8+1,`00011000
140 POKE #E0*8+2,`11111111
150 POKE #E0*8+3,`11111111
160 POKE #E0*8+4,`00011000
170 POKE #E0*8+5,`00111100
180 POKE #E0*8+6,`01100110
190 POKE #E0*8+7,`11000011
200 X=7:Y=5
210 LC A,B:? " "
220 LC X,Y:? CHR$(#E0)
230 A=X:B=Y
240 IF BTN(LEFT)  X=X-1
250 IF BTN(RIGHT) X=X+1
260 IF BTN(UP)    Y=Y-1
270 IF BTN(DOWN)  Y=Y+1
280 IF X<0 X=0
290 IF X>14 X=14
300 IF Y<0 Y=0
310 IF Y>10 Y=10
320 GOTO 210