a = [2, 5, 1, 3,8, 7]
best = 0
(0..a.size - 3).each do |i|
  s = a[i] + a[i+1] + a[i+2]
  best = s if s > best
end
puts best