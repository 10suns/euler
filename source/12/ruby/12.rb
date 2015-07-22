require 'prime'

def number_factor_of(number)
  prime_divisors = number.prime_division.inject([]) do |memo, current|
    (1..current.last).each do
      memo << current.first
    end
    memo
  end
  (1..prime_divisors.count).inject(1) do |count, n|
    count += prime_divisors.combination(n).to_a.uniq.count
  end
end

triangle_numbers = [1]
while number_factor_of(triangle_numbers.last) < 500
  triangle_numbers << triangle_numbers.last + triangle_numbers.count + 1
end

puts triangle_numbers.last