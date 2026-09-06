import unittest
import calculator

class CalcTest(unittest.TestCase):

    def test_CalculateSumOfIntegers_A_and_B_AssingValueTo_C(self):
        a = int(5)
        b = int(6)
        result = calculator.addition(a,b)
        self.assertEqual(result, 11)

if(__name__ == "__main__"):
    unittest.main()