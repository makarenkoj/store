#Encoding:UTF-8

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'lib/product'
require_relative 'lib/books'
require_relative 'lib/film'

current_path = File.dirname(__FILE__)
film = Film.from_file(current_path + '/data/films/1.txt')
books = Books.from_file(current_path + '/data/books/1.txt')

puts film
puts books

begin
  Product.from_file(current_path + '/data/books/1.txt')
rescue NotImplementedError
  puts "Для данного класса метод не реализован!"
end
