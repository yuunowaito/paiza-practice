# Cランク: paizaカードゲーム(ハイアンドロー)
# 概要: 親カードと子カードの強弱を、1つ目の番号→(同じなら)2つ目の番号の順で判定する
# 使ったメソッド: if/elsif/elseの入れ子、&&での条件結合
# 気づき: elseの中では外側の条件が「否定」されたことが確定済みなので条件を省略できる。
#        elsifで書く場合は条件を明示的に書く必要がある

parentcard = gets.split.map(&:to_i)
n = gets.to_i
challenger = []
n.times do
    challenger << gets.split.map(&:to_i)
end
challenger.each do |x|
 if parentcard[0] > x[0]
    puts "High"
 elsif parentcard[0] < x[0]
    puts "Low"
 else
  if parentcard[1] < x[1]
       puts "High"
  else
       puts "Low"
  end
 end
end

