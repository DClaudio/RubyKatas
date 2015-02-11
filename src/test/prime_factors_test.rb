require 'minitest/autorun'
require '../main/prime_factors'

class PrimeFactorsTest < Minitest::Test

  def test_one
    assert_equal(Array.new, generatePrimes(1), "generating prime factors for 1")
  end
  def test_two
    assert_equal([2], generatePrimes(2), "generating prime factors for 2")
  end
  def test_three
    assert_equal([3], generatePrimes(3), "generating prime factors for 3")
  end
  def test_four
    assert_equal([2,2], generatePrimes(4), "generating prime factors for 4")
  end
  def test_five
    assert_equal([2,3], generatePrimes(6), "generating prime factors for 6")
  end
  def test_six
    assert_equal([2,2,2], generatePrimes(8), "generating prime factors for 8")
  end
  def test_seven
    assert_equal([3,3], generatePrimes(9), "generating prime factors for 9")
  end
end