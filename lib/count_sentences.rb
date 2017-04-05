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
    count = 0

    ary = []
    ary = self.split(" ")
    ary.each { |x|
      if x.end_with?(".") || x.end_with?("?") || x.end_with?("!")
          count += 1
      end
    }
    count
  end

end
