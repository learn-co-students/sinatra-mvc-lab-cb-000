class PigLatinizer

  def piglatinize(str) 
    words = str.split(" ")

    if words.count == 1
      piglatinize_word(str)
    elsif words.count > 1
      piglatinize_phrase(words)
    end
  end

  def piglatinize_word(word)
    if word.start_with?(/[aAeEiIoOuU]/)
      "#{word}way"
    else
      piglatinize_consonant(word)
    end
  end

  def piglatinize_phrase(words)
    new_str = words.map do |word|
      if word.start_with?(/[aAeEiIoOuU]/)
        "#{word}way"
      else
        piglatinize_consonant(word)
      end
    end

    new_str.join(' ')
  end

  def piglatinize_vowel(word)

  end

  def piglatinize_consonant(word)
    start = word[/\A[^aAeEiIoOuU]+/]
    end_of_word = word.sub(/\A[^aAeEiIoOuU]+/,'')
    "#{end_of_word}#{start}ay"
  end
end