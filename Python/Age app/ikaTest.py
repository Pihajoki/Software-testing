import unittest
import ikaUtils

class ikaTestaus(unittest.TestCase):

    def test_LapsenIka(self):
        ika = int(3)
        result = ikaUtils.vertaus(ika)
        self.assertEqual(result, "Olet lapsi")

    def test_AikuisenIka(self):
        ika = int(19)
        result = ikaUtils.vertaus(ika)
        self.assertEqual(result, "Olet aikuinen")

    def test_ElakelainenIka(self):
        ika = int(74)
        result = ikaUtils.vertaus(ika)
        self.assertEqual(result, "Olet eläkeläinen")

    def test_ElakelainenIka_Case2(self):
        ika = int(70)
        result = ikaUtils.vertaus(ika)
        self.assertEqual(result, "Olet eläkeläinen")

        
if(__name__ == "__main__"):
    unittest.main()