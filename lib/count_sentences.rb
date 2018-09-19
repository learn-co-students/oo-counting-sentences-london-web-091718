require 'pry'

class String

  def sentence?
    self[-1].end_with?(".")
  end

  def question?
    self[-1].end_with?("?")
  end

  def exclamation?
    self[-1].end_with?("!")
  end

  def count_sentences
    to_count = self.split(".").join('?').split('?').join("!").split("!")
    to_count.reject! {|sentence| sentence == "" }
    to_count.count
  end
end
