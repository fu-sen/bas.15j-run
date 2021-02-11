' Program LIST / Loader | IchigoJam BIG / IchigoJam BASIC 1.2.2+
' original by Taisuke Fukuno https://fukuno.jig.jp/1020
' remaked by Keiichi Shiga (BALLOON | FU-SEN), 2015-2019.
' CC BY 4.0 - https://creativecommons.org/licenses/by/4.0/
10 'Program LIST / Loader
20 CLV
30 P=PEEK(#C00)
40 IF P=0 ?"Only IchigoJam":END
50 L=63:'1M=127 512K=63 256K=31
60 IF VER()>12233 VIDEO 3
70 FOR J=0 TO L 
80 POKE #FD0,J*4,3
90 A=#50+(J>63)*4
100 R=I2CR(A,#FD0,2,#FD2,27)
110 ? J+100;" ";
120 N=PEEK(#FD2)
130 IF N=255 GOTO 200
140 I=0
150 POKE #FDE,0
160 IF N=39 I=1
170 C=PEEK(#FD2+I)
180 IF C ?CHR$(C);:I=I+1
190 IF C GOTO 170
200 ?
210 K=0
220 IF J%11<>10 K=K+1
230 IF J<>L K=K+1
240 IF K=2 GOTO 330
250 ?"RUN,MORE";
260 INPUT N
270 IF N=0 GOTO 330
280 POKE #FFE,N
290 CLP
300 CLT
310 CLV
320 LRUN PEEK(#FFE)
330 NEXT
