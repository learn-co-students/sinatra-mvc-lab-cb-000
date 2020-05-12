class PigLatinizer

  # IMHO, this is better than the posted solution. All in one method, one word or multiple, doesn't care. Also doesn't care how many consonants the word starts with. Why write specific code for each possibility of one or two or three consonants? Ugh. What about schnozz? schlock? sphygmomanometer? My code works with those!

  def piglatinize(user_phrase)
    word_array = user_phrase.split(" ").collect do |word|
      word_letters = word.split("")
      if word.start_with?(/[aeiouAEIOU]/)
        word += "way"
      else
        while !word_letters[0].match(/[aeiouAEIOU]/)
          word_letters.push(word_letters.shift)
          end
        word = word_letters.join("") + "ay"
      end
    end
    word_array.join(" ")
  end

end
