def ceaeser_cipher(string, shift)
	alphabet = ("a".."z").to_a
	new_word = []
	string_array = string.scan(/./)

	string_array.each do |letter|
		if alphabet.include? letter
			new_letter = (alphabet.index(letter) + shift) % alphabet.length
			new_word << alphabet[new_letter]
		else
			new_word << letter
		end
	end
	puts new_word.join("")
end

puts "Please enter your sentence to encrypt: "
string = gets.chomp.downcase

puts "Please enter the shift factor"
shift = gets.chomp.to_i

ceaeser_cipher(string, shift)