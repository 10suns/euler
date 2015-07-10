def is_palin?(number)
  number.to_s == number.to_s.reverse
end

palin_number = 0
(100..999).each do |i|
  (i..999).each do |j|
    palin_number = (i * j) if is_palin?(i*j) && (i*j) > palin_number
  end
end
puts palin_number