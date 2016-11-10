def no_repeats(year_start, year_end)
	r = []
 (year_start..year_end).to_a.each {|x| r << x if !no_repeat?(x)}
 r
end

def no_repeat?(year)
	r = false
year.to_s.split('').each { |x| r = true if year.to_s.split('').count(x)  > 1 }
r
end

p no_repeats(1981, 1990)
