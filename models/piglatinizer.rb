class PigLatinizer


  def initialize

  end

  def piglatinizes(word)

    if "aeiouAEIOU".include? word[0]
    # vowel words add "way" to end
      word = word + "way"
    else
      # non vowel words, shift letters up to first vowel to end and add "ay"
      start_fragment = ""
      vowel = false
      while vowel == false
        start_fragment = start_fragment + word[0]
        word = word[1..-1]
        if "aeiouAEIOU".include? word[0]
          vowel = true
        end
      end
      word = word + start_fragment + "ay"
    end
    word
  end

  def piglatinize(string)
    words = string.split(" ")
    words.map! { |word| self.piglatinizes(word) }
    words.join(" ")
  end

end
