# Cランク: C016 Leet文字列
# 概要: A→4,E→3,G→6,I→1,O→0,S→5,Z→2の対応表(ハッシュ)を作り、文字列を変換する
# 使ったメソッド: ハッシュ、nil判定、文字列連結(+=)
# つまずいた点: 比較の==を=と書くミスが再発

s = gets.chomp
table = { "A"=>"4", "E"=>"3", "G"=>"6", "I"=>"1", "O"=>"0", "S"=>"5", "Z"=>"2" }
result = ""
s.chars.each do |char|
    if table[char] == nil
        result += char
    else
        result += table[char]
    end
end
puts result