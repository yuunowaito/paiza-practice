# Cランク: C090 黒電話(40万人記念問題)
# 概要: 電話番号の各数字について、フックまでの往復距離を合計する
# 使ったメソッド: ハッシュ、.chars、next if、積算
# つまずいた点: 最初「往復」を見落とし1回分しか計算していなかった

number_line = {0=>12, 1=>3, 2=>4, 3=>5, 4=>6, 5=>7, 6=>8, 7=>9, 8=>10, 9=>11}
s = gets.chomp
sum = 0
s.chars.each do |n|
    next if n == "-"
    sum += number_line[n.to_i] * 2
end
puts sum