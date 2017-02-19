require 'pry'

class PigLatinizer
  attr_accessor :user_phrase

  VOWELS = ['a','e','i','o','u']

  def initialize(user_phrase)
    @user_phrase = user_phrase
  end

  def translateWord(word)
    split_word = word.split("")

    # The word begins with a vowel
    for i in 0..VOWELS.length
      return split_word.join().to_s + 'way' if split_word[0] == VOWELS[i]
    end
  end
  binding.pry
end
