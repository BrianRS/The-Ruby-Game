# Convert Morse code to English

def morse_to_eng(morse)
	eng = ""
	dot = [[[[[],'H',[]],'S',[[],'V',[]]],'I',[[[],'F',[]],'U',[]]],'E',[[[[],'L',[]],'R',[]],'A',[[[],'P',[]],'W',[[],'J',[]]]]]
	dash = [[[[[],'B',[]],'D',[[],'X',[]]],'N',[[[],'C',[]],'K',[[],'Y',[]]]],'T',[[[[],'Z',[]],'G',[[],'Q',[]]],'M',[[],'O',[]]]]
	
	state = [dot,"",dash]
	space_count = 0
	
	morse.each_char do |c|
		puts c
		if c == '.'
			space_count = 0
			state = state[0]
		elsif c == '-'
			space_count = 0
			state = state[2]
		elsif c == ' '
			eng << state[1]
			state = [dot,"",dash]
			space_count += 1
			if space_count == 3
				eng << " "
				space_count = 0
			end
		end
	end
	eng << state[1]
	eng
end
