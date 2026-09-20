coins = [1, 3, 5]
dp = Array.new(12, 0)
dp[0] = 1
coins.each do |c|
  (c..11).each { |v| dp[v] += dp[v - c] }
end

puts dp[11]