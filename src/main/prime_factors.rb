def generatePrimes(n)
  result = Array.new
  if n > 1
    if n%2 == 0
      result << 2
      n /= 2
    end
    result << n if n > 1
  end
  result
end