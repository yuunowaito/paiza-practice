# Cランク: 反復横跳び順位
# 概要: 記録がXの生徒の順位は、Xより大きい記録の人数+1。二重ループで、外側で対象者を固定し、
#       内側で全員と比較して自分より大きい記録の人数を数える
# つまずいた点: 外側のrecord(固定)と内側のr(毎回全員を見直す比較相手)の役割の違い

n = gets.to_i
records = []
n.times do
    records << gets.to_i
end

records.each do |record|
  count = 0
  records.each do |r|
    if r > record
      count += 1
    end
  end
  rank = count + 1
  puts rank
end