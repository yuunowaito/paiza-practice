def num_div(n)
  cnt = 0
  i = 1
  while i * i <= n
    cnt += (i * i == n ? 1 : 2) if (n % i).zero? 
    i += 1
  end
  cnt
end

nums =(1..1000).to_a
nums.sort_by! { |x| [-num_div(x), x] }
puts nums[0]