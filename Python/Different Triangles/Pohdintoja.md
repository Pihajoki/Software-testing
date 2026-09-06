Pohdinnassa käytetty pohjana wtst3_collard5-1.pdf "Analyzing the triangle problem"

Tehtävä: "Pohtikaa montako testiä tarvitaan, jotta testikattavuuden voidaan katsoa olevan riittävällä tasolla?"


TLDR
Paperin luettua kysymys "montako testiä tarvitaan, jotta testikattavuuden voidaan katsoa olevan riittävällä tasolla?" on aika vaikea antaa suora vastaus.
Esimerkiksi tämän kolmio tehtävän palautukseen vaadittu 3 testiä osoittaa että joskus testien määrä ei tarvitse olla suuri. (samaan aikaan paperi osoittaa että se voi tarvittaessa samalla kolmio tehtävällä olla hyvinkin suuri)
Uskon että hyötysuhde, käytettävissä oleva aika, asiakkaan/käyttäjän tarve ja yleinen testaustarve ohjelmalle/koodille vaikuttavat kaikki asiaan. Suoraa vastausta "kuinka monta testiä tarvitaa kattavuuteen" en voi antaa, enkä voi antaa edes suuntaa antavaa vastausta. Riippuu hyvin pitkälti mitä ollaan testaamassa, kenelle ja mihin tarkoitukseen.
////////////////////////////////////////////////////////////////////////////

Nostoja / ajatuksia paperista.

Kurssin tehtävän hyväksyttävään suoritukseen testejä 3 kappaletta:
-epäsäännöllinen
-tasakylkinen
-tasasivuinen

minimaaliseen testiin 4 kappaletta:
-epäsäännöllinen
-tasakylkinen
-tasasivuinen
-virheellinen syöte

"Oikea määrä testausta riippuu vaihtokaupasta riskien ja ekonomien välillä.
Jos riski on suhteellisen matala, on 4 testin minimaalinen testaus riittävä.
Jos riski on suuri ja kalliimpi, syventävää testaamista on tehtävä."
(Quote wtst3_collard5-1.pdf documentistä sivulta 3)
((Oma käännös, niin voi olla kieliopillisia virheitä))

Paperissa esitellyn automatisoidun testaamisen hyötysuhde on hyvin mielenkiintoinen. Meidän on turha testata esimerkiksi (2,2,2) ja (3,3,3), jos olemme jo valmiiksi saaneet tasasivuisen kolmion vastauksena kyseisellä kaavalla. Automatisointia tehtäessä meidän tulisi huomioida kattava määrä "negatiivisia" testi tuloksia aiheuttavat tekijät koodissamme, jotta saisimmme automatiosta huomattavan hyötysuhteen.

Selvä negatiivisissa testi tuloksissa aiheutava ongelma on niiden kattavan testauksen "vaikeus" koodissa.

Itse kun tein koodini ja testaukseni, joista palautin videon. En tullut ajatelleeksinikaan että käyttäjä syöttäisi esimerkiksi (0.01, 99999,99, -2342).
Kuten aikaisemmin ohjelmointi tunneilla sanottu:
"Käyttäjää pitää aina kohdella että hän on tyhmä tai tuhma"

Paperissa nostettu huomio "kenelle ohjelma/alusta on suunniteltu" on loistava nosto. Jos kyse on matematiikoista he tarvitsevat varmasti negatiivisia sivuja sisältäviä kolmioita tai kompleksilukuisia sivuja. Kun taas nelos luokkalaisilta voitaisiin vain kieltää negatiivisten lukujen käyttö.

Kiitos, jos jaksoit lukea. (TLDR alun perin tekstin lopussa, mutta siirsin sen ylös helpottamaan elämää.)
-Roni Pihajoki
6/9/2026