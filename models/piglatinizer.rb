class PigLatinizer
  def piglatinize(user_phrase)
    user_phrase.split(" ").map{|word| latinize_word(word)}.join(" ")
  end

  private

  def latinize_word(word)
    letters = word.split("")
    first_vowel = letters.detect { |l| !l.downcase.scan(/[aeiou]/).empty? }
    if letters.index(first_vowel) == 0
      word + "way"
    else
      indexes = letters.each_with_index.map{ |l, i| i if l == first_vowel }.compact
      arr = word.partition(word.slice(indexes.first, indexes.last))
      arr[1..-1].join + arr.first + "ay"
    end
  end
end
