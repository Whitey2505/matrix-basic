
5 gosub 5000
10 rem matrix
20 randomize(100)
25 A1=2:A2=32:A3=40:GOSUB 5090
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
160 gosub 5020: print chr$(W)
170 ro=ro+1
180 next a
181 gosub 5550
182 if w>50 then goto 30
190 ro=ro-10
200 for a=1 to 10
210 rem
220 rem
230 A1=2:A2=32:A3=40:GOSUB 5090
240 gosub 5020: print chr$(32)
250 ro=ro+1
260 next a

270 goto 30

1000 end

5000 REM CLEAR SCREEN                   
5010 PRINT CHR$(27);"[2J": RETURN       
5020 REM Set cursor pos ro=row, co=col
5030 RO$=STR$(RO):RO$=RIGHT$(RO$,LEN(RO$)-1)
5040 CO$=STR$(CO):CO$=RIGHT$(CO$,LEN(CO$)-1)
5050 PRINT CHR$(27)+"["+RO$+";"+CO$+"H";
5070 RETURN
5080 REM SET ATTRIBUTES A1=attribute, A2=Foreground color, A3=Background color
5090 A1$=STR$(A1):A1$=RIGHT$(A1$,LEN(A1$)-1)
5100 A2$=STR$(A2):A2$=RIGHT$(A2$,LEN(A2$)-1)
5110 A3$=STR$(A3):A3$=RIGHT$(A3$,LEN(A3$)-1)
5120 X$=CHR$(27)+"["+A1$+";"+A2$+";"+A3$+"m":PRINT X$;:RETURN

5500 z=int(rnd(1)*60)+1
5510 return
5550 w=int(rnd(1)*93)+33
5560 return


