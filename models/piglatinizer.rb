class PigLatinizer
  
  def constant?(text, letter_position)
    "bcdfghjklmnpqrstvwxyz".chars.include?(text.downcase.chars[letter_position - 1])
  end

  def vowel?(text, letter_position)
    "aeoui".chars.include?(text.downcase.chars[letter_position - 1])
  end

  def piglatinize(text)
    if constant?(text, 1)
      if constant?(text, 2)
        if constant?(text, 3)
          #starts with 3 constant e.g. 'spray'
          return "#{text[3..-1]}#{text[0..2]}ay"
        else
          #starts with 2 constant e.g. 'cheers'
          return "#{text[2..-1]}#{text[0..1]}ay"
        end
      else
        #starts with 1 constant e.g. 'banana'
        return "#{text[1..-1]}#{text[0]}ay"
      end
    else
      #starts with vowel e.g. 'omelet'
      return "#{text}way"
    end
  end

  def to_pig_latin(text)
    text.split(' ').map { |word| piglatinize(word) }.join(' ')
  end
end
