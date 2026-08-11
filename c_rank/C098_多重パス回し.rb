# Cランク: ボールのパス回し
# 概要: 各人の持ち球数を管理し、パス回しの命令ごとに宣言個数と持ち球数の小さい方を渡す
# 使ったメソッド: 配列のインデックス操作、.minでのクランプ、+=/-=
# つまずいた点: 「人の番号(1始まり)」と「配列の添字(0始まり)」のズレ

n = gets.to_i
member = []
n.times do
    member << gets.to_i
end
m = gets.to_i
pass = []
m.times do
    pass << gets.split.map(&:to_i)
end
pass.each do |p|
    a = p[0]
    b = p[1]
    x = p[2]
    give = [member[a-1], x].min
    member[a-1] -= give
    member[b-1] += give
end
member.each do |r|
    puts r
end