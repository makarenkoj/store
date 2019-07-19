#Encoding: UTF-8

class Books < Product
  attr_accessor :title, :genre, :author

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding:'UTF-8').map { |l| l.chomp}

    self.new(
      title: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3],
      balance: lines[4]
    )
  end

  def initialize(parameters)
    super

    @title = parameters[:title]
    @genre = parameters[:genre]
    @author = parameters[:author]
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
