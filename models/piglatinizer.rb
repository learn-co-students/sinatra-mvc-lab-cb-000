class PigLatinizer
  attr_accessor :user_phrase

  VOWELS = '/[aeiouAEIOU]/'

  def initialize(user_phrase)
    @user_phrase = user_phrase
    puts @user_phrase
  end

  def isVowel?(word)
    word.include?(VOWELS)
  end

end
