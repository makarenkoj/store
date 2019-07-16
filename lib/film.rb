#Encoding: UTF-8

class Film < Product
  attr_accessor :title, :year, :director

  def initialize(parameters)
    super

    @title = parameters[:title]
    @year = parameters[:year]
    @director = parameters[:director]
    @films = []
  end

  def from_file(films)
    #films = []
    file_names.each do |file_name|
      lines = File.readlines(file_name, chomp: true)
      @films << Film.new(lines[0], lines[1], lines[2], lines[3], lines[4])
    end

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