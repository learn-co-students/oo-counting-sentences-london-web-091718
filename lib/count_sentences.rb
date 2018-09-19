require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true:false
  end

  def count_sentences
        splitten=self.split(/\.|\?|\!/)
        splitten.delete_if{ |string| string.length<2}.length

  end
end
