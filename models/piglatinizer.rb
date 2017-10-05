class PigLatinizer

  def piglatinize(text)
    new_line = ''

    text.split(' ').each { |word|
      first_vowel_index = word.index(/[aeiouAEIOU]/)

      if first_vowel_index == 0
        new_word = word + 'way'
      else
        new_word = word[first_vowel_index..-1] + word[0...first_vowel_index] + 'ay'
      end

      if new_line.size > 0
        new_line += ' '
      end

      new_line += new_word
    }

    new_line
  end

    def to_pig_latin(text)
      piglatinize(text)
    end

end
