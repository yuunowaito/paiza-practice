triples = (1..20).to_a.combination(3)
puts triples.count {|t| t.sum == 30}