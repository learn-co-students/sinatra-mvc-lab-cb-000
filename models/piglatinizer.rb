class PigLatinizer
  def initialize()
  end

  def piglatinize(text)
    text.split(" ").collect do |word|
      parts = word.partition(/[aeiou]/i)
      parts[0] == "" ? parts[1] + parts[2] + 'way' : parts[1] + parts[2] + parts[0] + 'ay'
    end.join(" ")
  end
end
