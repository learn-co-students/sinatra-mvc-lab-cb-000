class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    finished_words = []

    words.each do |word|
      case
      when word.match(/^[aeiouAEIOU]/)
        word += "way"
        finished_words << word
      when word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{3}/)
        trip_consonant = word[/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{3}/]
        word = word[3..-1]
        word += trip_consonant
        word += "ay"
        finished_words << word
      when word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2}/)
        dub_consonant = word[/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2}/]
        word = word[2..-1]
        word += dub_consonant
        word += "ay"
        finished_words << word
      when word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
        uno_consonant = word[/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/]
        word = word[1..-1]
        word += uno_consonant
        word += "ay"
        finished_words << word
      end
    end
    finished_words.join(" ")
  end

end
