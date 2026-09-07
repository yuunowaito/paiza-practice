n = 360360 
count = 0
i = 1
while i * i <= n
  if (n % i) == 0
    j = n / i
    count += 1 if (100..999).include?(i)
    count += 1 if j != i && (100..999).include?(j)
  end
  i += 1
end
puts count