# Cランク: C144 じゃんけんの結果
# 概要: アリスの勝ちパターン(G対C、C対P、P対G)を洗い出し、N回分の手を読み込んで勝った回数をカウントする
# 間違えた点:
#   1. 条件式で代入演算子=と比較演算子==を混同(if a == "G" && b = "C"のように書いてしまった)
#   2. 文字列を引用符なしで書いてしまい、変数・定数として解釈されそうになった(a == G → a == "G"が正しい)

n = gets.to_i
count = 0
n.times do
  a, b = gets.split
  if a == "G" && b == "C"
    count += 1
  elsif a == "C" && b == "P"
    count += 1
  elsif a == "P" && b == "G"
    count += 1
  end
end
puts count