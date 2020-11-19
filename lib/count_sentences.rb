require 'pry'

class String

  def sentence?
    #binding.pry
    if self.end_with?(".")
      return true
    else 
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else 
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else 
      return false
    end
  end

  def count_sentences
    splitted = self.split(/[\.?!]/)
    count = splitted.select {|sent| sent.length > 0 }
    count.length
  end
end