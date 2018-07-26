class PigLatinizer


  def piglatinize(phrase)
    words = phrase.split(" ")
    new_phrase = []

    words.each do |word|
      if word =~ (/\A[aeiouAEIOU]/i)
        new_phrase << word + "way"
      elsif word[0..2] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{3}/) #&& word[1] =~ (/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
        new_phrase << word[3..-1] + word[0..2] + 'ay'
      elsif word[0..1] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2}/)
        new_phrase << word[2..-1] + word[0..1] + 'ay'
      elsif word[0] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
        new_phrase << word[1..-1] + word[0] + 'ay'
      end
    end

    new_phrase.join(" ")
  end

end


#For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence.
#Then, "ay" is added, as in the following examples:[11]
#"pig" = "igpay"
#"latin" = "atinlay"

#For words that begin with vowel sounds, one just adds "way" o Examples are:
#"eat" = "eatway"

#When words begin with consonant clusters (multiple consonants that form one sound)
#"smile" = "ilesmay"

#it 'has a method splits the sentence to piglatinize each word' do
#expect(words.piglatinize("i love programming")).to eq("iway ovelay ogrammingpray")
