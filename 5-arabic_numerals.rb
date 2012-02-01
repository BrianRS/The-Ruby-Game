def to_arabic_numeral(roman)
	arabic = 0
	0.upto roman.length do |i|
		case roman[i]
		when 'M'
			arabic += 1000
		when 'D'
			arabic += 500
		when 'C'
			if roman[i..-1].include? 'M' or roman[i..-1].include? 'D'
				arabic -= 100
			else
				arabic += 100
			end
		when 'L'
			arabic += 50
		when 'X'
			if roman[i..-1].include? 'C' or roman[i..-1].include? 'L'
				arabic -= 10
			else
				arabic += 10
			end
		when 'V'
			arabic += 5
		when 'I'
			if roman[i..-1].include? 'X' or roman[i..-1].include? 'V'
				arabic -= 1
			else
				arabic += 1
			end
		end
	end
	arabic
end
