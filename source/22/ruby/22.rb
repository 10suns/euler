def position_of(letter)
  letter.ord - 'a'.ord + 1
end

def score_of(name, index)
  name.downcase.split('').inject(0){ |sum, n| sum + position_of(n)} * index
end

File.open(File.join(File.dirname(__FILE__), 'p022_names.txt'), 'r').each do |line|
  puts line.split(',').sort!.map.with_index{|v, i| score_of(v.gsub!(/\A"|"\Z/, ''), i+1)}.reduce(:+)
end