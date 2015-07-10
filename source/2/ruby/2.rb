def fibonaccy_generator(limit_value)
  result = [1,2]
  while (result.last < limit_value)
    result.push(result.last(2).reduce(:+))
  end
  result
end

fibonaccy = fibonaccy_generator(4e6)
puts fibonaccy.inject(0) {|sum, n| n % 2 == 0 ? sum + n : sum}