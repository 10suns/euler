require 'prime'
answer = Prime.prime_division(600_851_475_143).flatten.at(-2)
puts answer