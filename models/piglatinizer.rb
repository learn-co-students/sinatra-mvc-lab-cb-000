class PigLatinizer
  
  attr_accessor :word
  
  def initialize
    self
  end
  
  def self.piglatinize_helper(word)
    pig_word = ""
    if word =~ (/\A[aeiou]/i)
      pig_word = word + 'way'
    elsif word =~ (/\A[^aeiou]+/i)
      match = /\A[^aeiou]+/i.match(word)
      pig_word = match.post_match + match.to_s + 'ay'
    end
      
    pig_word
  end
  
  def piglatinize(sentence)
    words = sentence.split(" ")
    words.collect do |word|
      PigLatinizer.piglatinize_helper(word)
    end.join(" ")
  end
  
end