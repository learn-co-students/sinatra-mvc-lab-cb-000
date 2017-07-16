class PigLatinizer


  def to_pig_latin( text )
    word_array = text.split(' ')
    #puts word_array

    phrase = ""
    word_array.each do |word|
      pigged_word = piglatinize( word )
      phrase = phrase + pigged_word + " "
    end

    phrase.strip!
  end

  def piglatinize( word )
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    pig_latin = ""
    before_vowel = ""
    #puts "Starting with:#{word}"
    # If word starts with a vowel
    #if word[0].scan(/[aeiou]/)
    if vowels.include? word[0]
      #pig_latin = word[1..-1] + word[0] + "way"
      pig_latin = word + "way"
    else
      i=0
      while !vowels.include? word[i]
        before_vowel = before_vowel + word[i]
        i=i+1
      end
      pig_latin = word[i..-1] + before_vowel + "ay"

    end

    pig_latin
  end

end
