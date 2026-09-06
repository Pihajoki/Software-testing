#Tulostus
print("testi")

#methodi
def methodi(arvo1, arvo2):
    arvo3 = arvo1 + arvo2
    return int(arvo3)

#methodin kutsuminen
print(methodi(1,2))

# Voidaan yhdisää methodit
# import filename

# __name__ on pythonin sisäinen muuttuja
# Nyt kun ohjelma ajetaan tiedoston sisällä se toteuttaa ohjelman
# Jos ohjelma ajetaan esim methodina tai sitten se on vaan importattuna niin se
# ei aja esim tässä print komentoa ulkoisessa koodissa.

if (__name__ == "__main__"):
    print(methodi(1,2))


# User input
number1 = int(input("Anna ensimmäinen numero: "))

# Kutsutaan importattua methodia
print(filename.methodi(testi))

# Luokan luonti muutenkin
class luokanNimi(mistä peritään):

# ************* Unittest ***********


# unittesting
import unittest

#Luokan luonti unittestaukseen
class tiedostonNimi(unittest.TestCase): #Tiedoston nimi vain unittest mielessä

    # Määritetään methodi. Unittest frameworkin methodit alkavat aina test_
    # Methodin nimi tulee kuvata itse tapahtumaa
    # (Self) tarkoittaa kun luodaan luokasta olio ->
    # mitä suoritetaan niin välitetään se olio tälle luokalle
    def test_CalculateSumOfIntegers_A_and_B_AssingValueTo_C(self):
        # Arrange
        a = int(5)
        b = int(6)
        # Act
        result = calculator.addition(a,b)
        # Assert
        self.assertEqual(result, 11)

## Ajetaan testi
if(__name__ == "__main__"):
    unittest.main()



