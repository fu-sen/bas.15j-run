' BREAKOUT remake | IchigoJam BASIC
' original by MASAHARU ( http://pcn.club/gallery/ )
' renewed by Keiichi Shiga (BALLOON | FU-SEN)
' CC BY 4.0 - https://creativecommons.org/licenses/by/4.0/
20 CLS:LET X,RND(17)*2+1
21 LET Y,23:LET Z,15
25 LET M,1:LET N,-1:LET S,0
26 LET T,0:LET U,1
31 LC 0,T:? CHR$(1);
32 LC 35,T:? CHR$(1);
35 LET T,T+1:IF T<>26 GOTO 31
41 LET C,1:IF U&1 LET C,14
42 LC U,0:? CHR$(C);
45 LET U,U+1:IF U<>35 GOTO 41
50 LC X,Y:? CHR$(11);:LC Z-1,25
60 ? CHR$(Z==1);CHR$(2);CHR$(2);
61 ? CHR$(2);CHR$(2);CHR$(2);
62 ? CHR$(Z==30);
70 IF VPEEK(X,Y-1)<>14 GOTO 75
71 LET N,1:LET S,S+1
72 LC X,Y-1:? CHR$(1);
73 LC 0,26:? "SCORE ";S;
74 IF S%17==0 LET U,1:GOTO 41
75 IF Y==1 LET N,1
80 IF X==1 LET M,1
90 IF X==34 LET M,-1
110 IF VPEEK(X,Y+1)==2 LET N,-1
200 IF Y==25 LC 10,26:END
210 LET K,INKEY()
220 IF (K==28)*(Z>1) LET Z,Z-1
230 IF (K==29)*(Z<30) LET Z,Z+1
231 LC X,Y:? " ";
232 LET X,X+M:LET Y,Y+N
240 GOTO 50
