class PigLatinizer

  def piglatinize(word)

    vowels = ['a', 'e', 'i', 'o', 'u']

    if vowels.include? word[0].downcase
      word += "way"
    else
      consonents = ""
      while !vowels.include? word[0].downcase
        consonents += word[0]
        word = word[1..-1]
      end

      word + consonents + "ay"
    end
  end

  def to_pig_latin(string)
    string.split(' ').map { |word| piglatinize(word) }.join(' ')
  end

end
