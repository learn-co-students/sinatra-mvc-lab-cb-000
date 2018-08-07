class PigLatinizer

    def piglatinize(phrase)
        word_array = phrase.split(" ")
        word_array.collect do |word|
            pigword(word)
        end.join(" ")
    end

    def pigword(word)
        orig = word.split('')
        pig = ''
        if 'aeiouAEIOU'.include?orig[0]
            pig = orig.join + "way"
        else
            suffix = ''
            orig.each_with_index do |char, index|
                if 'aeiouAEIOU'.include?(char)
                    pig = orig[index..-1].join
                    break
                else
                    suffix = suffix + char
                end

            end
            pig = pig + suffix + "ay"
        end
        pig
    end
end
