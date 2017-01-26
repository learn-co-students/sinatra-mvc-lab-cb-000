class PigLatinizer
  attr_accessor :text

  def initialize

  end

  def piglatinize(word)
    placeholder = ""
    vi = word.index(/[aeiouAEIOU]/)
    if vi == 0
      placeholder = word + "way"
    else
      #word[] is alias for string#slice
      placeholder = word[vi..word.size] + word[0,vi] + "ay"
    end
    placeholder
  end

  def to_pig_latin(words)
    words.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
