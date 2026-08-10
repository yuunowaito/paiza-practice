# Cランク: C138 エレベーター移動距離
# 概要: エレベーターの停止階の記録から、合計で何階分動いたかを求める(1階スタート)
# 気づき: 「今いる階」(状態、置き換える)と「合計移動距離」(積算、足し込む)は別々の変数で管理する必要がある
# つまずいた点: 同じ変数に両方の役割を持たせようとして計算がズレた

n = gets.to_i
f = []
n.times do
    f << gets.to_i
end
count = 1 # 今いる階
total = 0
f.each do |a|
    total += (count - a).abs
    count = a
end
puts total