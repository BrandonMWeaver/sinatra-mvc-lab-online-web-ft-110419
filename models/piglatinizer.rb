class PigLatinizer
  
  def piglatinize(text)
    piglatinized_text = ""
    words = text.split(' ')
    
    words.each do |word|
      if word[0].downcase =~ /[aeiou]/
        word = "#{word}way"
      elsif word[0].downcase == 'p'
      end
      puts word
      piglatinized_text += word
    end
    
    return piglatinized_text
  end
end
