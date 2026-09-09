*** Settings ***
Library    OperatingSystem
Library    Collections
Library    String


*** Test Cases ***
# Lue tiedostosta muuttujaan
# Tee tiedoston sisälöstä sanalista ${addresses}
# Aseta haettu lista globaaliksi muuttujaksi
Set global variable    ${addresses}



*** Test Cases ***
# Luo tyhjä tiedosto

#Selvitä kuinka monta ositetta ${addresses} listassa on ja tallenna se muuttujaaan ${count}

# SIlmukka, joka käy listan läpi ja suorittaa pingin
FOR    ${index}    IN RANGE    ${count}
    ${output}=    Run And Return Rc And Output    ping ${addresses}[${index}]
END

#Etsi tarvittavat tiedot outputista

#lisää tiedot vastaustiedostoon

#Testaa!!, että aika on alle 50ms


# Tee Robot Frameworkillä seuraavat "testit".
# 1. Lue webpages.txt tiedot RF:n käyttöön.
# 2. Lähetä Ping jokaiseen tekstitiedostolta löytyvään osoitteeseen.
# 3. Ota RF:llä talteen jokaisen pingattavan sivuston IP ja pinggiin kuluva aika. Testaa, että Pingiin kuluva aika on alle 50ms.
# 4. Luo uusi txt-tiedosto johon kirjoitat pingatun sivuston IP-osoitteen ja pingiin kuluneen keskimääräisen ajan.

# Kuvatkaa robotin koodi ja toiminnallisuus videolle.
# Palauttakaa myös robotin koodi palautuskansioon videon linkin lisäksi