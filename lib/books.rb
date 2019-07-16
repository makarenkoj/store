#Encoding: UTF-8

class Books < Product
  attr_accessor :title, :genre, :author

  def initialize(parameters)
    super

    @title = parameters[:title]
    @genre = parameters[:genre]
    @author = parameters[:author]
  end

  def from_file

  end

  def to_s
    "Книга #{@title}, #{@genre}, #{@author}" + "#{super}"
  end

  def update(parameters)
    @title = parameters[:title] if parameters[:title]
    @genre = parameters[:genre] if parameters[:genre]
    @author = parameters[:author] if parameters[:author]
  end
end