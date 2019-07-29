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

puts "Программа Магазин."
puts "Ознакомтесь с ассортимениом нашего магазина: "
puts "\n"

collection.sort!(by: :price, balance: :asc)

basket = Basket.new

loop do
  collection.delet_nil

  puts collection
  puts
  puts "Выберите понравившийся вам товар."
  puts "Для выбора нажмите цифру соответствующую товару в списке."
  puts

  choice = STDIN.gets.chomp.to_i

  break if choice == 0

  input = collection.to_a[choice - 1]

  basket.add(input)

  basket.take_away(input)

  puts "У вас в корзине:\n#{basket}"
  puts
  puts "На сумму #{basket.check}"
  puts
end

puts "Вы купили:\n#{basket}"
puts
puts "Потратив #{basket.check} р."
