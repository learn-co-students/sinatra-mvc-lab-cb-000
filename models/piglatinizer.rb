class PigLatinizer

  def piglatinize(sentence)
    words = sentence.split(" ")

    if words.size > 1
      sentence(words)
    else
      piglatinize_word(words)
    end
  end

  def piglatinize_word(word)
    letters = word.first.split("")

    if letters[0].scan(/[aeiouAEIOU]/) != []
      first_letter_vowel(letters)
      
    else
      first = ""
      middle = ""

      letters.each_with_index do |letter, index|
        first = word.first.slice(index, word.first.size)
        middle = word.first.slice(0, index)
        break if letter.scan(/[aeiou]/) != []
      end

       first + middle + "ay"
    end
  end

  def first_letter_vowel(word)
    word << "way"
    word.join("")
  end

  def sentence(words)
    translated_sentence = []

    words.each do |word|
      translated_sentence << piglatinize(word)
    end

    translated_sentence.join(" ")
  end

end
