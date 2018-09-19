require 'pry'

class String

  def sentence?
    # check whether a given string ends with a literal dot
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    i = 0
    sentence_array = self.split(/[.?!]/)
    sentence_array.each do |sentence|
      unless sentence.length < 1
        i += 1
      end
    end
    i
  end
end
