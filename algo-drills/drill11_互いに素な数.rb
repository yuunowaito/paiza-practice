count = 0
(1..100).each do |n|
  count += 1 if n.gcd(100) == 1
end
puts count