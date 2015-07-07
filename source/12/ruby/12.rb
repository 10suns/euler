def factors_of(number)
  result = []
  (1..number).each do |i|
    break if result.count(i) > 0
    result += [i, number/i] if number%i == 0
  end
  result.sort
end

i = 0
triangle_number = 0
loop do
  triangle_number += i
  break if factors_of(triangle_number).count >= 5
  i += 1
end

p triangle_number