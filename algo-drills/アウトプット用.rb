n = gets.chomp.to_i
b = []
n.times do
  a = gets.chomp.to_i
    b << a
end
c = Hash.new(0)
b.each{ |x| c[x] += 1 }
puts c.values.count {|v| v >= 2}
