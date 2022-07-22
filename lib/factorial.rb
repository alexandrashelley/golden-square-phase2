def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    p "loop starts, n is #{n}"
    product *= n
  end
    product
end

puts factorial(5)

# intended output:
#
# > factorial(5)
# => 120