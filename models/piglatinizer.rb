require 'pry'

class PigLatinizer
  attr_accessor :user_phrase

    VOWELS = ['a','e','i','o','u']

  def initialize(user_phrase)
    @user_phrase = user_phrase
  end

  def translateWord(word)
    split_word = word.split("")

    # Word begins with a vowel
    for i in 0..VOWELS.length
      return split_word.join().to_s + 'way' if split_word[0] == VOWELS[i]
    end

    # Word begins with a Consonant
    index = /aeiou/.match(word,1)
  end

  def to_pig_latin(user_phrase)
    @user_phrase.collect {|x| translateWord(x)}.join(" ")
  end
  binding.pry
end
