#Encoding: UTF-8

class Film < Product
  attr_accessor :title, :year, :director

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      title: lines[0],
      director: lines[1],
      year: lines[2],
      price: lines[3],
      balance: lines[4]
    )
  end

  def initialize(parameters)
    super

    @title = parameters[:title]
    @year = parameters[:year]
    @director = parameters[:director]
  end

  def to_s
    "Фильм #{@title}, #{@year}, режисёра #{@director}," + "#{super}"
  end

  def update(parameters)
    super

    @title = parameters[:title] if parameters[:title]
    @year = parameters[:year] if parameters[:year]
    @director = parameters[:director] if parameters[:director]
  end
end
