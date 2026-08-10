# Cランク: パーフェクトシャッフル
# 概要: カードの山を上半分・下半分に分け、下半分から交互に組み合わせる操作をN回繰り返す
# 使ったメソッド: card[開始位置,個数](スライス)、zip(2配列のペア化)、flatten(平らにする)、join(" ")
# 進め方: 問題文にルール明記がなく、出力例から逆算してシャッフルの規則を手計算で確認してから実装した

m, n = gets.split.map(&:to_i)
card = (1..m).to_a

n.times do
  top = card[0, m/2]
  bottom = card[m/2, m/2]
  card = bottom.zip(top).flatten
end

puts card.join(" ")