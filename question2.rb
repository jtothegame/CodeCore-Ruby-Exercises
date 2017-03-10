class Book
  attr_accessor :title
  attr_accessor :chapters
  attr_accessor :chaps

  def initialize (title, chapters)
    @title = title
    @chapters = []
  end

  def chapters

    if @chapters.length
      puts "Your book: #{@title} has #{@chapters.length} chapters."
      @chapters.each_with_index do |value, index|
        puts "#{index+1}: #{value}"
      end
    else puts "Your book doesn't have any chapters."
    end
  end


  def add_chapter(name)
    @chapters.push name
  end
end

book1 = Book.new("My Awesome Book", 0)
book1.add_chapter("My Awesome Chapter 1")
book1.add_chapter("My Awesome Chapter 2")
book1.add_chapter("My Awesome Chapter 3")
book1.chapters
