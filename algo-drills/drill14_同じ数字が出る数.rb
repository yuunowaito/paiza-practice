count = 0
(1..1000).each do |n|
  freq = Hash.new(0)
  n.digits.each { |d| freq[d] += 1 }
  count += 1 if freq.values.any? { |v| v >= 2 }
end
puts count