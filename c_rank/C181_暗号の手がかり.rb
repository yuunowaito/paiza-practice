# Cランク: C181 暗号の手がかり

n = gets.to_i
m = gets.split
lengths = []
m.each do |word|
  lengths << word.length
end
puts lengths.max - lengths.min