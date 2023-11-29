lot(a2324, warszawa, krakow, 1800, 1845, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, warszawa, rzeszow, 1850, 1930, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, warszawa, berlin, 1400, 1525, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, warszawa, monachium, 1420, 1600, dni(0, 1, 1, 0, 1, 1, 1)).
lot(l324, warszawa, londyn, 1330, 1600, day(1, 1, 1, 1, 1, 1, 1)).
lot(a2324, krakow, warszawa, 700, 745, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, rzeszow, warszawa, 850, 940, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, berlin, warszawa, 1600, 1725, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, monachium, warszawa, 1720, 1850, day(0, 1, 1, 0, 1, 1, 1)).
lot(l324, londyn, warszawa, 1720, 1940, day(1, 1, 1, 1, 1, 1, 1)).

%zadanie1
lotywtorek(A,B,C):-lot(A,B,C,_,_,F),
((F=day(_,H2,_,_,_,_,_));
(F=dni(_,H2,_,_,_,_,_))),
H2 = 1.

%zadanie2 godziny rzeszow to warszawa
zadanie2():-lot(_,B,C,D,E,_),

B=rzeszow,
C=warszawa,

write(przylot),nl,
write(D),nl,
write(odlot),nl,
write(E),nl.

%zadanie3 trasa lot samolotu a2324
zadanie3():-lot(A,B,C,_,_,_),

A=a2324,

write('linia '),nl,
write(B),
write(-),
write(C).

%zadanie4 godziny rzeszow to warszawa
zadanie4():-lot(_,B,C,_,_,F),

B=berlin,
C=warszawa,

((F=day(H1, H2, H3, H4, H5, H6, H7));
(F=dni(H1, H2, H3, H4, H5, H6, H7))),

((H1=1,write(poniedzielek));
(H1=0,nl)),

((H2=1,write(wtorek),nl);
(H2=0,nl)),

((H3=1,write(sroda),nl);
(H3=0,nl)),

((H4=1,write(czwartek),nl);
(H4=0,nl)),

((H5=1,write(piatek),nl);
(H5=0,nl)),

((H6=1,write(sobota),nl);
(H6=0,nl)),

((H7=1,write(niedziela),nl);
(H7=0,nl)).

%zadanie5 godziny rzeszow to warszawa
zadanie5():-lot(A,_,C,_,E,_),

C=warszawa,

(((E>=800),(E=<1000));(E>=1800)),
write(A).