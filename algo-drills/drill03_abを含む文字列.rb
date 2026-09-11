letters = %w[a b c]
count =  letters.repeated_permutation(4).count do |a|
  a.join.include?("ab")
end
puts count