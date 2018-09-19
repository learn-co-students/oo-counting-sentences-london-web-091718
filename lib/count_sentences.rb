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
    self.split(/[.?!]/).delete_if {|sentence| sentence.empty?}.length
    #split sentence into separate sentences where split finds the following:  . ? !
    #then delete the sentence in the returned array that has an empty string
    #then count the length of the returned array aka the no. of remaining sentences 
  end

end


# binding.pry
