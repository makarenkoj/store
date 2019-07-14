#1.Создайте класс продукта, у экземпляров которого есть два поля: цена и количество на складе.
#  При создании нового продукта можно передать значения цены и остатка.
#  Для этих переменных сделайте геттеры.
#
#2.Унаследуйте от этого класса два других: книги и фильма соответственно. Своих переменных у этих классов пока нет.
#
#3.Создайте в основной программе какой-нибудь продукт, например, «фильм Леон». Выведите его стоимость в консоль.
#
#```
#"Фильм Леон стоит 290 руб."
# ```
#4.Создайте для этой программы локальный репозиторий. Мы к ней ещё вернёмся.

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

leon = Film.new(balance: 2, price: 290)

puts "Фильм Леон стоит #{leon.price} руб."
