require 'prime'

prime_array = Prime.take_while {|e| e < 2e6}
puts prime_array.reduce(:+)