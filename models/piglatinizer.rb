class PigLatinizer

  def initialize(content=nil)
    @content = content
  end

  def piglatinize(phrase=@content)
    latin = ""

    if ["a", "e", "i", "o", "u", "y"].include? phrase[0].downcase
      latin = phrase + "way"
    else
      loc = phrase.index(/[aeiou]/)
      latin = phrase[loc, phrase.size] + phrase[0, loc] + "ay"
    end

    latin.strip

  end

  def to_pig_latin(phrase=@content)
    phrase = phrase.split(" ")
    latin = ""

    phrase.each do |word|
      if ["a", "e", "i", "o", "u", "y"].include? word[0].downcase
        latin = latin + " " + word + "way"
      else
        loc = word.index(/[aeiou]/)
        latin = latin + " " + word[loc, word.size] + word[0, loc] + "ay"
      end
    end

    latin.strip

  end




end
