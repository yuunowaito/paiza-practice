# Cランク: C055 ログのフィルター
# 概要: 重要な文字列gを含むログだけを、もらった順に抽出して出力。1つもなければNone
# 使ったメソッド: .include?, フラグ変数(found)
# 進め方: .selectを使ったシンプルな書き方も試したが理解が追いつかず、素朴な書き方に戻した

n = gets.to_i
g = gets.chomp
words = []
n.times do
    words << gets.chomp
end

found = false
words.each do |word|
  if word.include?(g)
    puts word
    found = true
  end
end
if found == false
  puts "None"
end