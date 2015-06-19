answer = (1...1000).inject(0) do |sum, n|
  n % 3 == 0 || n % 5 == 0 ? sum + n : sum
end

puts answer