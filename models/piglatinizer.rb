class PigLatinizer

  VOWELS = ['a', 'e', 'i', 'o', 'u']
  class << self
    def translate_text(original_text)
      if original_text.empty?
        translation = original_text
      else
        translation = original_text.downcase.split(' ').collect{|word| translate_word(word)}.join(' ')
        if original_text[0] == original_text[0].upcase
          translation.capitalize!
        end
      end
      return translation
    end

    def translate_word(word)
      if VOWELS.include?(word[0])
        return word + "way"
      end
      vowel_index = word.chars.find_index{|char| VOWELS.include?(char)}
      return word[vowel_index..word.length] + word[0..vowel_index - 1] + 'ay'
    end

  end

  attr_reader :text

  def initialize(text="") # rspec requires that initialize should work without argument!
    self.text = text
  end

  def text=(text)
    @text = text
    @translation = PigLatinizer.translate_text(@text)
    return self
  end

  def translation()
    return @translation
  end

  # following methods provided to conform with rspec requirements, which seem to violate
  #  proper OO design, since these should be static (class) methods!
  def piglatinize(phrase)
    return PigLatinizer.translate_text(phrase)
  end

  def to_pig_latin(phrase)
    return PigLatinizer.translate_text(phrase)
  end

end
