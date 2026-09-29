n = gets.chomp.to_i
a = gets.split.map(&:to_i)

count = 0
a.combination(2).each do |x, y|
  count += 1 if (x + y) % 2 == 0
end

puts count