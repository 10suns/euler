def fibonaccy_generator(limit_value)
  result = [1,2]
  new_element = 0
  while (new_element < limit_value)
    new_element = result[result.length - 1] + result[result.length - 2]
    result.push(new_element)
  end
  result
end

fibonaccy = fibonaccy_generator(4e6)
answer = fibonaccy.inject(0) {|sum, n| n % 2 == 0 ? sum + n : sum}
puts answer