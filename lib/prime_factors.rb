def generatePrimes(n)
  result = Array.new
  candidate = 2
  while n > 1 do
    while n % candidate == 0 do
      result << candidate
      n /= candidate
    end
    candidate+=1
  end
  result
end