class PigLatinizer
  def to_pig_latin(sentence)
    array_of_words = sentence.split(" ")
    array_of_words.map do |word|
      piglatinize(word)
    end.join(" ")
  end
  def piglatinize(word)
    n = 0
    while word.length > n && is_vowel?(word[n]) == false do
      n+=1
    end
    starting_string = word[n..word.length-1]
    if n > 1
      ending_string = word[0..n-1]+"ay"
    else
      ending_string = is_vowel?(word[0]) ? "way" : word[0]+"ay"
    end
    starting_string + ending_string
  end
  private
  def is_vowel?(letter)
    ("aeoui").include?(letter.downcase)
  end
end
