class PigLatinizer

  def to_pig_latin(phrase)
    words_array = phrase.split(" ")
    words_array.map! {|word| piglatinize(word)}
    words_array.join(" ")
  end

  def piglatinize(word)
    first_split = word.split(/([aeiouAEIOU].*)/)[0]
    second_split = word.split(/([aeiouAEIOU].*)/)[1]
    if first_split == ""
      second_split + "way"
    else
      second_split + first_split + "ay"
    end
  end

end
