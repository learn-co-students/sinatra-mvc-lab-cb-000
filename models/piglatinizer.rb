class PigLatinizer
    def to_pig_latin(text)
        text.split(" ").map do |word| 
            piglatinize(word)
        end.join(" ")
    end

    def piglatinize(word)
        if word[0] =~ /[AEIOUaeiou]/
            word + 'way'
        else
            vowel_index = word =~ /[AEIOUaeiou]/
            word[vowel_index..-1] + word[0..vowel_index-1] + 'ay'
        end
    end
end
