module HelperMethods
  def titleize
    words = string.split(" ")
    words.each_with_index do |word, index|
      if (index == 0) || (word != "of" && word != "the" && word != "or" && word != "in" && word != "from")
        word.capitalize!
      end
    end
    words.join(" ")
  end
end

class Title
  attr_accessor :string
  include HelperMethods
end

class Book
  extend HelperMethods
  def self.string
    "the lord of the rings: return of the king"
  end
end

title1 = Title.new
title1.string = 'no matter where you\'re from or where you are, the journey is the best part.'

puts title1.titleize # example of using include

puts Book.titleize # example of using extend
