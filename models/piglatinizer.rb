class PigLatinizer
    attr_reader :text

    # def initialize(text)
    #     @text = text.downcase
    # end

    def convert(text)
        words = text.split(" ")
        words.collect do |word|
            if word.downcase =~ /\A[bcdfghjklmnpqrstvwxz]/
                cleaned_word = word.gsub(/\W/, "")
                second_last = cleaned_word.gsub(/[aeiouy]/, "*").split("*")[0]
                word = cleaned_word.sub(second_last, "") << second_last
                word << "ay"
            else
                word.gsub(/\W/, "") << "way"
            end
        end
    end

    def piglatinize(text)
        string = ""
        convert(text).each do |word|
            string << "#{word} "
        end
        string.strip
    end

    def to_pig_latin(text)
        string = ""
        convert(text).each do |word|
            string << "#{word} "
        end
        string.strip
    end
end