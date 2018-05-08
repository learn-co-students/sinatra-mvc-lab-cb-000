class PigLatinizer

  attr_accessor :word

  def piglatinize(word)
    # for words that begin w/ constants
    # pig = ig + p + ay

    # for words that begin w/ clusters
    # string = ing + str + ay

    # for words that begin w/ vowels
    # eat = eat + way

    #pork = ork + p + ay

    #first_letters =
    second_letters = word.slice(/[aeiou]\w+/)

  end

end
