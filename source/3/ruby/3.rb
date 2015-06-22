require 'prime'
n = 600_851_475_143
i = 0
#Solution 1
answer = Prime.prime_division(600_851_475_143).flatten.at(-2)
puts answer

#Solution 2
while n != 1 do
  i += 1
  n /= Prime.take(i).last if  n % Prime.take(i).last == 0
end
puts Prime.take(i).last