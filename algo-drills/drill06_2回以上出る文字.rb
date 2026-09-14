count = Hash.new(0)
"programming".chars.each { |c| count[c] += 1 }
puts count.count { |_, v| v >= 2 }