class PigLatinizer
  attr_accessor :text

  def piglatinize(text)
    arr1 = text.split('')
    if "aeiouAEIOU".include?(arr1[0])
      arr1 << "way"
    else
      arr2 = []
      count = 0
      del = 0
      arr1.each  do |letter|
          if letter.scan(/[aeoui]/).count > 0 && count != -1
            del = count
            count = -1
          elsif count != -1
            arr2 << letter
            count += 1
          end
      end
    arr1 = arr1.drop(del)
    arr2.each {|letter| arr1 << letter}
    arr1 << "ay"
    end
    new_word = arr1.join
  end

  def to_pig_latin(phrase)
    arr1 = phrase.split(" ")
    pig_latined = []
    arr1.collect! do |word|
      pig_latined << piglatinize(word)
    end

    pig_latined.join(" ")
  end
end
