

def newman_conway(num)
  raise ArgumentError, "num cannot be <= 0" if num <= 0

  return "1" if num == 1
  memo = Array.new(num)
  memo[0] = 0
  memo[1] = 1
  memo[2] = 1
  output = "1"

  count = 3
  while count <= num
    # P(n) = P(P(n - 1)) + P(n - P(n - 1))
    memo[count] = memo[memo[count - 1]] + memo[count - memo[count - 1]]
    count += 1
  end

  # This could be nested into the while loop above
  (2..num).each do |i|
    output += " #{memo[i]}"
  end
  
  return output
end