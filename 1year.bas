' IchigoJam 1st Anniversary | IchigoJam BASIC
' Copyright (c) 2015 Keiichi Shiga (BALLOON | FU-SEN)
' IchigoJam officially logo - CC BY IchigoJam http://ichigojam.net/ Licensed by jig.jp
' The MIT License (MIT) - https://gist.github.com/fu-sen/282b65c35d81a7d3b64c
1 '1year
10 LET [0],2178:LET [1],128
20 LET [2],2080:LET [3],2048
30 LET [4],-17920:LET [5],-28949
40 LET [6],-22546:LET [7],-21848
50 LET [8],21672:LET [9],-5446
60 LET [10],24302:LET [11],5
70 LET [12],8:LET [13],-4608
80 LET [14],-273:LET [15],-14593
90 LET [16],0:LET [17],24576
100 LET [18],-2452:LET [19],31987
110 LET [20],26310:LET [21],-9853
120 LET [22],-13204:LET [23],-1549
130 LET [24],-14723:LET [25],-31976
140 LET [26],3289:LET [27],-3682
150 LET [28],-12901:LET [29],6
160 LET I,0:LET B,0:PRINT
170 PRINT CHR$([I]&1);
180 LET [I],[I]>>1
190 LET B,B+1:IF B<>16 GOTO 170
200 LET I,I+1:LET B,0
210 IF I<>30 GOTO 170
220 PRINT:END