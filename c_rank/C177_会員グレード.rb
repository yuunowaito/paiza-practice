# 概要: K円以上のお会計が3回以上、かつ合計金額がM円以上ならsilver、そうでなければbronzeを出力
# 気づき: gets.split.map(&:to_i)は「splitが配列を返し、mapが各要素にto_iを橋渡しする」処理。
#        each+ifでの集計は、each内で毎回判定・出力せず、ループの外で1回だけ最終判定するのがポイント

n = gets.to_i
k, m = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
count = 0
q.each do |a|
  if a >= k
    count += 1
  end
end

if count >= 3 && q.sum >= m
  puts "silver"
else
  puts "bronze"
end