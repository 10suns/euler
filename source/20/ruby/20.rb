def factorial_of(n)
  n > 1 ? n*factorial_of(n-1) : 1
end

puts factorial_of(100).to_s.split('').inject(0) {|sum, n|sum + n.to_i}
