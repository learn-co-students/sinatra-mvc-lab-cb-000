require 'pry'

class PigLatinizer

  def piglatinize(word)
    if word =~ (/\A[aeiou]/i)
      result = word + 'way'
    elsif word =~ (/\A[^aeiou]/i)
      match = /[aeiou]/i.match(word)
      result = match.to_s + match.post_match + match.pre_match + 'ay'
    end
    result
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect{|word| piglatinize(word)}.join(" ")
  end

end
