zatrudnienie(anna, nowak, zelmer, duzafirma, 7500).
zatrudnienie(marcin, kowalski, techsolutions, sredniafirma, 5500).
zatrudnienie(katarzyna, wisniewska, globalcorp, duzafirma, 9000).
zatrudnienie(pawel, lewandowski, softtech, sredniafirma, 6500).
zatrudnienie(marta, kowalczyk, innovatelabs, malafirma, 4000).
zatrudnienie(krzysztof, jankowski, megaindustries, duzafirma, 1300).
zatrudnienie(agnieszka, szymanska, smartsolutions, sredniafirma, 6000).
zatrudnienie(rafal, dabrowski, tinyinnovations, malafirma, 3500).
zatrudnienie(natalia, lukasik, dataexperts, sredniafirma, 7000).
zatrudnienie(mateusz, wojciechowski, quantumsystems, duzafirma, 9500).
zatrudnienie(olga, nowicka, softcrafters, malafirma, 3800).
zatrudnienie(tomasz, kaczmarek, futuretech, duzafirma, 8200).
zatrudnienie(aneta, wójcik, codewizards, sredniafirma, 5800).
zatrudnienie(bartosz, kwiatkowski, startapp, malafirma, 4200).
zatrudnienie(wiktoria, piotrowska, innovatelabs, duzafirma, 8800).
zatrudnienie(damian, grabowski, webinnovators, sredniafirma, 6700).
zatrudnienie(klaudia, pawlak, brightminds, malafirma, 3200).
zatrudnienie(grzegorz, król, futuretech, duzafirma, 8700).
zatrudnienie(izabela, mazur, quantumsystems, sredniafirma, 7200).
zatrudnienie(jakub, adamczyk, fastsolutions, malafirma, 200).

funfromwork(Imie,Nazwisko):-zatrudnienie(Imie,Nazwisko,_Firma,Wielkosc,Zarobki),
Zarobki>1500,Wielkosc=malafirma.

sprawdzosobe(Imie,Nazwisko):-zatrudnienie(Imie,Nazwisko,_Firma,Wielkosc,Zarobki),
Zarobki<1500,Wielkosc=duzafirma.