import unittest
import triangleUtils

class triangleTest(unittest.TestCase):

    def test_tasasivuinenKolmio(self):
        arvo1 = int(3)
        arvo2 = int(3)
        arvo3 = int(3)
        result = triangleUtils.kolmionTarkistus(arvo1, arvo2, arvo3)
        print(result)
        self.assertEqual(result, "Kolmio on tasasivuinen")

    def test_tasakylkinenKolmio(self):
        arvo1 = int(3)
        arvo2 = int(3)
        arvo3 = int(6)
        result = triangleUtils.kolmionTarkistus(arvo1, arvo2, arvo3)
        print(result)
        self.assertEqual(result, "Kolmio on tasakylkinen")

    def test_epasaannollinenKolmio(self):
        arvo1 = int(3)
        arvo2 = int(6)
        arvo3 = int(9)
        result = triangleUtils.kolmionTarkistus(arvo1, arvo2, arvo3)
        print(result)
        self.assertEqual(result, "Kolmio on epäsäännöllinen")

if(__name__ == "__main__"):
    unittest.main()