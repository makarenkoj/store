#Encoding:UTF-8

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'lib/product'
require_relative 'lib/basket'
require_relative 'lib/books'
require_relative 'lib/film'
require_relative 'lib/disc'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

collection.sort!(by: :price, balance: :asc)

basket = Basket.new

puts collection

choice = STDIN.gets.chomp.to_i

input = collection.to_a[choice - 1]

basket.add(input)

puts
puts "#{basket}"
puts "#{basket.check}"
