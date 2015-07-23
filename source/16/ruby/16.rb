class Integer
  def to_a
    return [0] if self == 0
    Math.log10(self).floor.downto(0).map { |i| (self / 10**i)%10 }
  end
end

puts (2**1000).to_a.reduce(:+)