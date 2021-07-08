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
    # sentences = self.split(/[.?!]/).reject { |s| s.empty? }
    # sentences.count
    self.split(".").join("!").split("!").join("?").split("?").reject { |s| s.empty? }.count
    # binding.pry
  end
end
