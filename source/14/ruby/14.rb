collatz_sequence = []

(1..1e6).each do |n|
  tmp = [n]
  while tmp.last != 1
    tmp << if tmp.last.even? then tmp.last/2 else 3*tmp.last + 1 end
  end
  collatz_sequence << tmp
end

puts collatz_sequence.max_by{|a| a.length}.first