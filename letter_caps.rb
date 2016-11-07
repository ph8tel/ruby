def scramble_string(string, positions)
holder = []

string.length.times {|idx| holder[positions[(idx -1)]] = string[(idx -1)]}

answer = holder.join

end
puts " testing 'xnlui', assigned to positions [4, 2, 0, 3, 1]"
p scramble_string("xnlui", [4, 2, 0, 3, 1])
