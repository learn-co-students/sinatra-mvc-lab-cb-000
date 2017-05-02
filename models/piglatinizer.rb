class PigLatinizer
	attr_accessor :text

	# def initialize
	# 	@text = text
	# end

	def piglatinize(word)
    	first_consonants = word[/\A[bcdfghjklmnpqrstvwxyz]+/i]
     	rest_of_word = word.split(/\A[bcdfghjklmnpqrstvwxyz]+/i)[1]

     	if first_consonants
       	piglatin_word = rest_of_word + first_consonants + "ay"
     	else
      	 piglatin_word = word + "way"
     	end
 	piglatin_word
   end

	def to_pig_latin(text)
		words = text.split(" ")
			words.collect do |word|
			piglatinize(word)
			end.join(" ")
		end


end
