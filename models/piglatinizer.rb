class PigLatinizer
  
  def piglatinize(text)
    piglatinized_text = []
    words = text.split(' ')
    
    words.each do |word|
      if word[0].downcase =~ /[aeiou]/
        word = "#{word}way"
      elsif word[0].downcase == 'p'
        if word[1].downcase == 'l' || word[1].downcase == 'r'
          word = "#{word}#{word[0]}#{word[1]}ay"
          word[0] = ''
          word[1] = ''
        else
          word = "#{word}#{word[0]}ay"
          word[0] = ''
        end
        elsif word[0].downcase == 's' && word[1].downcase == 'p' && word[2].downcase == 'r'
          word = "#{word}#{word[0]}#{word[1]}#{word[2]}ay"
          word[0] = ''
          word[1] = ''
          word[2] = ''
      end
      puts word
      piglatinized_text << word
    end
    
    return piglatinized_text.join(' ')
  end
  
end
