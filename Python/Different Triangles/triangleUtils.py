def kolmionTarkistus(arvo1, arvo2, arvo3):

    if(arvo1 == arvo2 and arvo2 == arvo3):
        tasasivuinenTulostus = "Kolmio on tasasivuinen"
        return tasasivuinenTulostus
    
    if(arvo1 == arvo2 and arvo1 != arvo3):
        tasakylkinenTulostus = "Kolmio on tasakylkinen"
        return tasakylkinenTulostus
    if(arvo1 == arvo3 and arvo1 != arvo2):
        tasakylkinenTulostus = "Kolmio on tasakylkinen"
        return tasakylkinenTulostus
    if(arvo2 == arvo3 and arvo2 != arvo1):
        tasakylkinenTulostus = "Kolmio on tasakylkinen"
        return tasakylkinenTulostus
    
    if(arvo1 != arvo2 and arvo2 != arvo3 and arvo3 != arvo1):
        epasaannollinenTulostus = "Kolmio on epäsäännöllinen"
        return epasaannollinenTulostus

if (__name__ == "__main__"):
    print(kolmionTarkistus(3,3,3))
    print(kolmionTarkistus(1,3,3))
    print(kolmionTarkistus(2,7,2))
    print(kolmionTarkistus(2,2,7))
    print(kolmionTarkistus(7,2,2))
    print(kolmionTarkistus(1,2,3))

