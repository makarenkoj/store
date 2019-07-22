#Encoding: UTF-8

class Disc < Product
  attr_accessor :title, :band, :genre, :released

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      title: lines[0],
      band: lines[1],
      genre: lines[2],
      released: lines[3],
      price: lines[4],
      balance: lines[5]
    )
  end

  def initialize(parameters)
    super

    @title = parameters[:title]
    @band = parameters[:band]
    @genre = parameters[:genre]
    @released = parameters[:released]
  end

  def to_s
    "Альбом #{@title} - <<#{@band}>>, #{@genre}, #{@released}, " + " #{super} "
  end

  def update(parameters)
    super

    @title = parameters[:title] if parameters[:title]
    @band = parameters[:band] if parameters[:band]
    @genre = parameters[:genre] if parameters[:genre]
    @released = parameters[:released] if parameters[:released]
  end
end
