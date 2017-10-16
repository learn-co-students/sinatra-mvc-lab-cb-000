require 'pry'
class PigLatinizer
  # attr_reader :text

  def initialize

  end

  def to_pig_latin(str)
    # it 'has a method splits the sentence to piglatinize each word' do
    #   expect(words.to_pig_latin("i love programming")).to eq("iway ovelay ogrammingpray")
    words = str.split(" ") #split setence into array of words
    latin_words = [] #empty array to fill with new words
    words.each do |word| #iterate through words and replace them
      latin_words << self.piglatinize(word)
    end
    words = latin_words.join(" ") #return sentence from new words
  end


  def piglatinize(str)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    # binding.pry
    if vowels.include?(str[0].downcase) #if first letter is vowel
      str + 'way'
    elsif consonants.include?(str[0].downcase) && consonants.include?(str[1].downcase) && consonants.include?(str[2].downcase)
      str[3..-1] + str[0..2] + 'ay'
    elsif consonants.include?(str[0].downcase) && consonants.include?(str[1].downcase)
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0].downcase) #if only first letter is consonant
      str[1..-1] + str[0] + 'ay'  #append string minus 0
    else
      str # return unchanged
    end




  end

end
