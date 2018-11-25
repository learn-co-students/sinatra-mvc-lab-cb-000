class PigLatinizer
  attr_accessor :text
  
  @@vowels = ['a', 'e', 'i', 'o', 'u']

  def initialize(text = nil)
    @text = text
  end
 
  def piglatinize(phrase)
    words = phrase.split(" ")
    new_words = words.collect do |word|
      to_piglatin(word)
    end
    new_words.join(" ")
  end
 
  def to_piglatin(word)
      word = word.split("")
      if @@vowels.include?(word[0].downcase)
        new_word = word.join("") + "way"
      elsif @@vowels.include?(word[1])
        new_word = word[1..-1]
        new_word << word[0]
        new_word.join("") + "ay"
      elsif @@vowels.include?(word[2])
        new_word = word[2..-1]
        new_word << word[0] + word[1]
        new_word.join("") + "ay"
      else
        new_word = word[3..-1]
        new_word << word[0] + word[1] + word[2]
        new_word.join("") + "ay"
      end
  end
end