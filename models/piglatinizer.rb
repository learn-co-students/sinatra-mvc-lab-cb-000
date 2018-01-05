require 'pry'
class PigLatinizer
  attr_accessor :word

  def piglatinize(word)
    @word = word.downcase
    #binding.pry
    appendings = ""
    deletions = ""
    a = @word.scan(/.{1,1}/)
    a.each do |w|
      if w =~ /[aeoui]/
        appendings << "way" if appendings != "ay"
        break
      elsif w =~ /[bcdfghjklmnpqrstvwxyz]/
        appendings << "ay" if appendings != "ay"
        deletions << w
      end
    end
    deletions = deletions.split("")
    if deletions.count == 1
      a.delete(deletions[0])
    elsif deletions.count == 2
      a.delete(deletions[0])
      a.delete_at(a.index(deletions[1]) || a.length)#  a.delete(deletions[1])
    elsif deletions.count == 3
      a.delete(deletions[0])
      a.delete(deletions[1])
      a.delete(deletions[2])
    end
    deletions << appendings
    a << deletions
    a = a.join("")
    @word = a
    @word
  end


  def to_pig_latin(sentence)
    #binding.pry
    sentence = sentence.split
    return_string = ""
    latinized = " "
    sentence.each do |s|
      return_string << piglatinize(s)
      return_string << latinized
    end
    #binding.pry
    return_string.gsub(/\s+$/,'')
  end
end
