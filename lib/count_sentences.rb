require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split = (self.split(/[.!?]/).reject {|str| str == ""}).count
  end
  
end

p 'eof'
