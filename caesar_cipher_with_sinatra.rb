require 'sinatra'
require 'sinatra/reloader' if development?

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
	#puts 
	new_word.join("")
end

get '/' do
	string = params["string"]
	shift = params["shift"].to_i
	result = ceaeser_cipher(string, shift) unless string.nil?
	erb :index, :locals => {:result => result}
end
