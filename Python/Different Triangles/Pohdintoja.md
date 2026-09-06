<h4>Pohdinnassa käytetty pohjana wtst3_collard5-1.pdf "Analyzing the triangle problem"</h4>
<br>
<h3>Tehtävä: "Pohtikaa montako testiä tarvitaan, jotta testikattavuuden voidaan katsoa olevan riittävällä tasolla?"</h3>
<br>
<br>
<h3>TLDR</h3><br>
Paperin luettua kysymys "montako testiä tarvitaan, jotta testikattavuuden voidaan katsoa olevan riittävällä tasolla?" on aika vaikea antaa suora vastaus.<br>
Esimerkiksi tämän kolmio tehtävän palautukseen vaadittu 3 testiä osoittaa että joskus testien määrä ei tarvitse olla suuri.<br>
(samaan aikaan paperi osoittaa että se voi tarvittaessa samalla kolmio tehtävällä olla hyvinkin suuri)
Uskon että hyötysuhde, käytettävissä oleva aika, asiakkaan/käyttäjän tarve ja yleinen testaustarve ohjelmalle/koodille vaikuttavat kaikki asiaan.<br>
Suoraa vastausta "kuinka monta testiä tarvitaa kattavuuteen" en voi antaa, enkä voi antaa edes suuntaa antavaa vastausta.<br>
Riippuu hyvin pitkälti mitä ollaan testaamassa, kenelle ja mihin tarkoitukseen.<br>
<br>
<br>
<h5>Nostoja / ajatuksia paperista.</h5><br>
<br><br>
Kurssin tehtävän hyväksyttävään suoritukseen testejä **3 kappaletta**:<br>
-epäsäännöllinen<br>
-tasakylkinen<br>
-tasasivuinen<br>
<br><br>
minimaaliseen testiin **4 kappaletta**:<br>
-epäsäännöllinen<br>
-tasakylkinen<br>
-tasasivuinen<br>
-virheellinen syöte<br>
<br><br>
"Oikea määrä testausta riippuu vaihtokaupasta riskien ja ekonomien välillä.<br>
Jos riski on suhteellisen matala, on 4 testin minimaalinen testaus riittävä.<br>
Jos riski on suuri ja kalliimpi, syventävää testaamista on tehtävä."<br>
(Quote wtst3_collard5-1.pdf documentistä sivulta 3)<br>
((Oma käännös, niin voi olla kieliopillisia virheitä))<br>
<br>
Paperissa esitellyn automatisoidun testaamisen hyötysuhde on hyvin mielenkiintoinen.<br>
Meidän on turha testata esimerkiksi (2,2,2) ja (3,3,3), jos olemme jo valmiiksi saaneet tasasivuisen kolmion vastauksena kyseisellä kaavalla.<br>
Automatisointia tehtäessä meidän tulisi huomioida kattava määrä "negatiivisia" testi tuloksia aiheuttavat tekijät koodissamme, jotta saisimmme automatiosta huomattavan hyötysuhteen.<br>
<br>
Selvä negatiivisissa testi tuloksissa aiheutava ongelma on niiden kattavan testauksen "vaikeus" koodissa.<br>
<br>
Itse kun tein koodini ja testaukseni, joista palautin videon.<br>
En tullut ajatelleeksinikaan että käyttäjä syöttäisi esimerkiksi (0.01, 99999,99, -2342).<br>
Kuten aikaisemmin ohjelmointi tunneilla sanottu:<br>
"Käyttäjää pitää aina kohdella että hän on tyhmä tai tuhma"<br>
<br>
Paperissa nostettu huomio "kenelle ohjelma/alusta on suunniteltu" on loistava nosto.<br>
Jos kyse on matematiikoista he tarvitsevat varmasti negatiivisia sivuja sisältäviä kolmioita tai kompleksilukuisia sivuja.<br>
Kun taas nelos luokkalaisilta voitaisiin vain kieltää negatiivisten lukujen käyttö.<br>
<br>
**Kiitos**, jos jaksoit lukea. (TLDR alun perin tekstin lopussa, mutta siirsin sen ylös helpottamaan elämää.)<br>
-Roni Pihajoki<br>
6/9/2026<br>
