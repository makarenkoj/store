#Encoding: UTF-8

class Film < Product
  attr_accessor :title, :year, :director

  def self.from_file(file_path)
    #lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      title: lines[0],
      director: lines[1],
      year: lines[2].to_i,
      prise: lines[3].to_i,
      balance: lines[4].to_i
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
    @title = parameters[:title] if parameters[:title]
    @year = parameters[:year] if parameters[:year]
    @director = parameters[:director] if parameters[:director]
  end
end
