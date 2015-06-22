def is_palin?(number)
  number.to_s == number.to_s.reverse
end

palin_number = Array.new
(100..999).each do |i|
  (100..999).each do |j| 
    palin_number.push(i * j) if is_palin?(i * j)
  end
end
puts palin_number.sort.last