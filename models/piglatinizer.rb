class PigLatinizer
  CONSTANT_SUFFIX = 'ay'
  VOWEL_SUFFIX = 'way'

  def to_pig_latin(string)
    string.split(" ").map { |word| piglatinize(word) }.join(' ')
  end

  def piglatinize(word)
    if starts_with_vowel?(word)
      word + VOWEL_SUFFIX
    else
      move_constant_sound_to_end(word) + CONSTANT_SUFFIX
    end
  end

  private

  def starts_with_vowel?(word)
    !!word.downcase.match(/\A[aeiou]/)
  end

  def move_constant_sound_to_end(word)
    word.partition(/[^aioue]*/).reverse.join
  end
end
