boxes = 1
load = 0
(1..100).each do |w|
  if load + w <= 200
    load += w
  else
    boxes += 1
    load = w
  end
end
  puts boxes