class Movie
  attr_accessor :title, :genre

  def initialize(title, genre)
    @title = title
    @genre = genre
  end

  def to_s
    "#{@title}, #{@genre}"
  end
end
