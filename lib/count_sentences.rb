require 'pry'

class String

  def sentence? 
    last_char = self[-1]
    if last_char == "."
      true
    else 
      false
    end
  end

  def question?
    last_char = self[-1]
    if last_char == "?"
      true
    else 
      false
    end

  end

  def exclamation?
    last_char = self[-1]
    if last_char == "!"
      true
    else 
      false
    end
  end

  def count_sentences
    sentences = 0
    punctuation = ['.','?','!']
    self.chars.each.with_index do |char, index|
      if punctuation.include?(char) && !punctuation.include?(self[index+1])
      sentences +=1
      end
    end
    sentences
  end

end