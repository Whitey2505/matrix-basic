5 gosub 5000
10 rem matrix
20 randomize(100)

30 gosub 5500
40 x=z
50 gosub 5500
60 y=z
70 co=x:ro=y
80 for a=1 to 10
90 if co=60 goto 30
92 if ro>=30 goto 50
95 gosub 5550
100 gosub 5020: print chr$(W)
110 ro=ro+1
120 next a 

121 gosub 5500
122 x=z
123 gosub 5500
124 y=z
125 co=x:ro=y
130 for a=1 to 10
140 if co=60 goto 121
150 if ro>=30 goto 123
160 gosub 5020: print chr$(32)
170 ro=ro+1
180 next a

200 goto 30

1000 end

5000 REM CLEAR SCREEN                   
5010 PRINT CHR$(27);"[2J": RETURN       
5020 REM Set cursor pos ro=row, co=col
5030 RO$=STR$(RO):RO$=RIGHT$(RO$,LEN(RO$)-1)
5040 CO$=STR$(CO):CO$=RIGHT$(CO$,LEN(CO$)-1)
5050 PRINT CHR$(27)+"["+RO$+";"+CO$+"H";
5070 RETURN

5500 z=int(rnd(1)*60)+1
5510 return
5550 w=int(rnd(1)*93)+33
5560 return
