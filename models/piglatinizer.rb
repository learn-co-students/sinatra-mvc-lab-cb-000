class PigLatinizer
  def piglatinize(word)
    word_array = word.split('')

    if vowel_start(word)
      word + "way"
    elsif consonant_start(word)
      cluster = consonant_start(word)
      word.gsub(/^#{cluster}/,'') + cluster.downcase + "ay"
    end
  end

  def vowel_start(word)
    word.match(/^[aeuiouAEUIOU]/)
  end

  def consonant_start(word)
    match_first_char = word[0].match(/^[^aeuiouAEUIOU]/)
    match_second_char = word[1].match(/^[^aeuiouAEUIOU]/)
    match_third_char = word[2].match(/^[^aeuiouAEUIOU]/)
    case
    when match_first_char && match_second_char && match_third_char
      word[0..2]
    when match_first_char && match_second_char
      word[0..1]
    when match_first_char
      word[0]
    end
  end

  def to_pig_latin(words)
    words.split(" ").map { |word| self.piglatinize(word) }.join(" ")
  end
end

words = PigLatinizer.new
