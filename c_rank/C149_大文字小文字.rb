# Cランク: C149 大文字小文字(難易度1314±5)
# 概要: 校正ルール表からハッシュ(対応表)を作り、変換対象の文字列を正しい大文字小文字に書き換える
# 使ったメソッド: .chars, each_with_index, ハッシュ({}), .downcase, +=(文字列連結)
# つまずいた点: ハッシュの仕組み(キーで値を出し入れ)、each_with_indexでiとcharが同じ周で連動する仕組み、
#              .downcaseで検索用に大文字小文字を揃える必要性

s = gets.chomp
t = gets.chomp
a = ("a".."z").to_a
table = {}
s.chars.each_with_index do |char, i|
    table[a[i]] = char
end
result = ""
t.chars.each do |char|
    result += table[char.downcase]
end
puts result