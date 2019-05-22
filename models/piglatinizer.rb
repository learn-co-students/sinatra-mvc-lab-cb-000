
class PigLatinizer

  def piglatinize(str)
    letters = ('a'..'z').to_a

    vowels = %w[a e i o u]

    consonants = letters - vowels

    str2 = str.gsub(/\w+/) do|word|
      if vowels.include?(word.downcase[0])
        word + 'way'
      elsif (word.include? 'qu')
        idx = word.index(/[aeio]/)
        word = word[idx, word.length-idx] + word[0, idx] + 'ay'
      else
        idx = word.index(/[aeiou]/)
        word = word[idx, word.length-idx] + word[0, idx] + 'ay'
      end
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect { |word| piglatinize(word) }.join(" ")
  end


end
