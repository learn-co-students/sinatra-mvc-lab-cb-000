class PigLatinizer
  def piglatinize(word)
    # Rule 1: If word begins with a consonant --> take first letter, put it at the end of the word and add "ay"
    # Rule 2: If word begins with 2 consonants --> take 2 consonants, put them at the end and add "ay"
    # Rule 3: If word begins with vowel sound --> add "way" at the end

    if word =~ /\A[aeiou]/i
      return word + 'way'
    elsif word =~ /\A[^aeiou]{2,}/i
      # puts "went into two consonants. Word: #{word}"
      vowel_index = word =~ /[aeiou]/i
      # puts "#{vowel_index} #{word[0..vowel_index - 1]}"
      return word[vowel_index..-1] + word[0..vowel_index - 1] + 'ay'
    elsif word =~ /\A[^aeiou]/i
      # puts "one consonant. Word: #{word}"
      return word[1..-1] + word[0] + 'ay'
    end
  end

  def to_pig_latin(string)
    word_list = string.split()
    pig_words = []
    word_list.each do |word|
      pig_words << piglatinize(word)
    end

    pig_words.join(' ')
  end
end