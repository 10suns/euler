def pythagorean_triples
  (1..Float::INFINITY).lazy.flat_map do |z|
    (1..z).flat_map do |x|
      (x..z).select do|y|
        x**2 + y**2 == z**2
      end.map do |y|
        [x, y, z]
      end
    end
  end
end

puts pythagorean_triples.find {|*, x, y , z| x + y + z == 1000}.rece(:*)