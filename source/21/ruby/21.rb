def factors_of(number)
  (1...number).to_a.keep_if{|i| number % i == 0}
end

sum_proper_divisors = (1..10000).map do |i|
  [i,factors_of(i).reduce(:+)]
end

sum_proper_divisors.keep_if do |i|
  sum_proper_divisors.include?(i.reverse) && i != i.reverse
end

puts sum_proper_divisors.inject(0){|sum,n| sum + n[0]}