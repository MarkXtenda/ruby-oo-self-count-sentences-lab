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
    sentences = []
    self.split(/[.!?]/).each do |sentence|
      (!sentence.empty?) ? sentences << sentence : nil
    end
    sentences.size
  end
end

new = String.new("new")

puts new.sentence?