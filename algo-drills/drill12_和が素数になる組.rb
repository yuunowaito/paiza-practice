def prime?(n)
  return false if n < 2
  (2...n).none? {|d| n % d == 0}
end

pairs = (1..20).to_a.combination(2)
puts pairs.count { |a, b| prime?(a + b)}