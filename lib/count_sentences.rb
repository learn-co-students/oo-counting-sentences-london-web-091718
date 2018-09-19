require 'pry'

class String

  def sentence?
    self.end_with?(".")
    # if self[-1] == "."
    #   return true
    # else
    #   false
    # end
  end

  def question?
    self.end_with?("?")
    # if self[-1] == "?"
    #   return true
    # else
    #   false
    # end
  end

  def exclamation?
    self.end_with?("!")
    # if self[-1] == "!"
    #   return true
    # else
    #   false
    # end
  end

  def count_sentences
    num = self.split(/[?!.]/)
    num.reject!{|sent| sent.empty?}
    num.count
  end

end
