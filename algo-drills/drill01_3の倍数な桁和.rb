count = 0
(1..100000).each do |n|
  count += 1 if (n.digits.sum % 3) == 0
end
puts count