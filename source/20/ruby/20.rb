def factorial_of(n)
  n >1 ? n*factorial_of(n-1) : 1
end

p factorial_of(100).to_s