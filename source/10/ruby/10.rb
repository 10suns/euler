require 'prime'

puts Prime.take_while{|e| e < 2e6}.reduce(:+)