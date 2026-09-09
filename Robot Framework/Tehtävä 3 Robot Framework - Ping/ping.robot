*** Settings ***
Library    OperatingSystem
Library    Collections
Library    String

*** Variables ***
${path}=    Set Variable    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\Tehtävä 3 Robot Framework - Ping
${addresses}=    Get File    ${path}/webpages.txt
${count}=    Get Line Count    ${addresses}


*** Test Cases ***
# Lue tiedostosta muuttujaan, Tee tiedoston sisälöstä sanalista ${addresses}, Aseta haettu lista globaaliksi muuttujaksi
Lue tiedostosta muuttujaan
    ${path}=    Set Variable    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\Tehtävä 3 Robot Framework - Ping
    ${addresses}=    Get File    ${path}/webpages.txt
    Set Global Variable    ${addresses}

# Luo tyhjä tiedosto
Luo tyhjä tiedosto
    ${path}=    Set Variable    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\Tehtävä 3 Robot Framework - Ping
    Create File    ${path}/tyhja.txt
    File Should Exist    ${path}/tyhja.txt
    File Should Not Be Empty    ${path}/tyhja.txt

# Selvitä kuinka monta ositetta ${addresses} listassa on ja tallenna se muuttujaaan ${count}
Selvitä kuinka monta ositetta
    Set Global Variable    ${count}


# SIlmukka, joka käy listan läpi ja suorittaa pingin
Silmukka joka käy listan läpi ja suorittaa pingin
    FOR    ${index}    IN RANGE    ${count}
        ${output}=    Run And Return Rc And Output    ping ${addresses}[${index}]
        Log    ${output}
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