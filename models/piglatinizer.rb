class PigLatinizer

  def vowel?(char)
  "aeiouAEIOU".include?(char)
  end


  def piglatinize_word(string)
      words = string.split
      words.collect do |word|
        if "aeiouAEIOU".include?(word[0])
          word += "way"
        else
          until vowel?(word[0]) do
            word = word[1..-1] + word[0]
          end
          word = word + "ay"
        end
      end.join
    end

    def piglatinize(user_input)
      user_input.split.collect { |word| piglatinize_word(word) }.join(" ")
    end

end
