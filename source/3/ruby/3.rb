require 'prime'
puts 600_851_475_143.prime_division(Prime::Generator23.new).flatten.max