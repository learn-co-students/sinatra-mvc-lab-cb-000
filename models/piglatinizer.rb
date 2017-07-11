# class PigLatinizer

#   attr_accessor :text

#   def piglatinize(word)
#     prefix = ay
#     word << prefix << (prefix.length > 0 ? "ay" : "way")
#   end

#   def to_pig_latin(text)
#     text.split(' ').map{|w| piglatinize(w) }.join(' ')
#   end

# end

class PigLatinizer
  attr_accessor :text

  def piglatinize(word)
    num = word.index(/[aeiouAEIOU]/)
    if num == 0
      string = word + "way"
    else
      string = word[num..word.size] + word[0,num] + "ay"
    end
    string
  end

  def to_pig_latin(words)
    words.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end