
class PigLatinizer

  def piglatinize(w)
    piglatinize_word(w)
  end

  def to_pig_latin(s)
    s.strip.include?(" ") ? piglatinize_sentence(s) : piglatinize_word(s)
  end

  private

  def piglatinize_sentence(s)
    s.split.collect { |w| piglatinize_word(w) }.join(" ")
  end

  def piglatinize_word(w)

    if w.include?("-")
      piglatinize_dash_word(w)
    else
      v_index = w.index(w.scan(/[aeiouAEIOU]/).first) unless w.scan(/[aeiouAEIOU]/).first.nil?
      (v_index == 0 ||v_index == nil) ? "#{w + 'way'}" : "#{w[v_index..-1] + w[0..v_index-1] + 'ay'}"
    end

  end

  def piglatinize_dash_word(w)

    p_arr = w.split("-").collect do |word|
      v_index = word.index(word.scan(/[aeiou]/).first) unless word.scan(/[aeiou]/).first.nil?
      (v_index == 0 || v_index == nil) ? "#{word + 'ay'}" : "#{word[v_index..-1] + word[0..v_index-1] + 'ay'}"
    end

    p_arr.join("-")
  end

end

