class PigLatinizer
  attr_accessor :text

  def piglatinize(word)
    prefix = word.slice!(/^[^AEIOUaeiou]*/)
    word << prefix << (prefix.length > 0 ? "ay" : "way")
  end

  def to_pig_latin(text)
    text.split(' ').map{|w| piglatinize(w) }.join(' ')
  end
end
