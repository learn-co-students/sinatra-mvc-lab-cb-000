
class PigLatinizer

  def piglatinize(word)
  	to_pig_latin(word)
  end
      
  def to_pig_latin(string)
  	words = string.split(" ")
    final_array = []
        
    words.each do |word|
      if /^[^aeiou\W]{3}/i.match(word)
        first_three_letters = word.slice(0,3)
      	word[0, 3] = ''
      	final_array << word + first_three_letters + "ay"
      elsif
      	/^[^aeiou\W]{2}/i.match(word)
      	first_two_letters = word.slice(0,2)
      	word[0, 2] = ''
      	final_array << word + first_two_letters + "ay"
      elsif /^[^aeiou\W]/i.match(word)
      	first_letter = word.slice(0)
      	word[0] = ''
      	final_array << word + first_letter + "ay"
      else
      	final_array << word + "way"
      end
    end

    final_array.join(" ")
  end   
end

   






