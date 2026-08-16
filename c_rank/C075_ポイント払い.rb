# Cランク: C075 ポイント払い
# 概要: 各運賃について、ポイントが足りればポイントから、足りなければ残高から支払い、
#       残高払いの場合のみ10%を新ポイントとして加算する
# 使ったメソッド: if/elseでの2パターン分岐、文字列内変数埋め込み"#{}"

n, m = gets.split.map(&:to_i)
money = n
point = 0
m.times do
  f = gets.to_i
  if point >= f
    point -= f
  else
    money -= f
    point += (f * 0.1).to_i
  end
  puts "#{money} #{point}"
end
