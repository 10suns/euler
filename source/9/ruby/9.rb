#brutal force - we loop for every possible result
found = false
a = 0
s = 1000
while found == false do
  a += 1
  b = a + 1
  while b < s / 2 do
    c = s - a - b
    if c**2 == a**2 + b**2 
      found = true
      break
    end
    b += 1
  end
end

puts a*b*c

#another way
