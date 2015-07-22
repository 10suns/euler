collatz_sequence = []

(1..1e6).each do |n|
  tmp = [n]
  while tmp.last != 1
    #tmp << tmp.last.even? ? tmp.last/2 : 3*tmp.last + 1

    if tmp.last.even?
      tmp << tmp.last/2
    else
      tmp << 3*tmp.last + 1
    end
  end
  collatz_sequence << tmp
end

p collatz_sequence.max_by{|a| a.length}.first