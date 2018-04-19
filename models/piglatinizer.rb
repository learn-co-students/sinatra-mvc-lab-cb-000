require 'pry'

class PigLatinizer
  attr_accessor :word

  def initialize
    @word = word
  end

  def piglatinize(string)
    if !string.include?(' ')
      if string[0] =~ /([aeiouAEIOU])/
        string << 'way'
      else
        string_arr = string.split(/([aeiou].*)/)
        front_letter = string_arr.shift
        string_arr.push(front_letter).push("ay")
        string = string_arr.join
      end
      string

    else
      pig_arr = []
      arr = string.split(' ')
      arr.each do |word|
        if word[0] =~ /([aeiouAEIOU])/
          word << 'way'
        else
          word_arr = word.split(/([aeiouAEIOU].*)/)
          front_letter = word_arr.shift
          word_arr.push(front_letter).push("ay")
          word = word_arr.join
        end
        pig_arr << word
      end
      pig_sentence = pig_arr.join(' ')

    end
  end

end
