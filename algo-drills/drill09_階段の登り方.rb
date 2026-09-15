dp = [1, 1]
(2..10).each do |i|
  dp[i] = dp[i-1] + dp[i-2]
end
puts dp[10]