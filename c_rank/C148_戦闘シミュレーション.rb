# Cランク: C148 戦闘シミュレーション
# 概要: 自分のレベルと相手のレベルを比較し、勝敗に応じてレベルが変動するシミュレーション
# 間違えた点: n.time(times のs忘れ)、Xとxの大文字小文字混同、endの数不足(if用とtimes用で2つ必要)

first_line = gets.split
n = first_line[0].to_i
l = first_line[1].to_i
n.times do
  x = gets.to_i
  if l > x
    l += x / 2
  elsif l < x
    l /= 2
  end
end
puts l

# メモ: 省略記法について
# .map(&:to_i) は .map { |x| x.to_i } の省略形
# &:メソッド名 → { |x| x.メソッド名 } に変換して読む