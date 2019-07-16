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

#Продолжаем развивать наш «Магазин», который мы создали в уроке про наследование классов.
#
#1.Сделайте так, чтобы из основной программы можно было создать объект класса Book или Film,
# передав ему кроме цены также другие параметры.
# Для книги — название, жанр и автора; для фильма — название, год и режиссера.
#
# Напишите также метод to_s для экземпляра класса Film и Book,
# который возвращает информацию об этом экземпляре одной строкой.
#
# В основной программе создайте пару книжек и фильмов и выведите их в цикле на экран.




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

#products = []

#products << Film.new(
 # title: 'Леон', year: '1994', director: 'Люк Бессон', price: 990, balance: 5
#)
#
#products << Film.new(
#  title: 'Дурак', year: '2014', director: 'Юрий Быков', price: 390, balance: 1
#)
#
#products << Books.new(
#  title: 'Идиот', genre: 'роман', author: 'Федор Достоевский', price: 1500, balance: 10
#)



puts 'Вот какие товары у нас есть:'
puts
#products.each { |product| puts product }

film = Film.new(title: 'Леон', director: 'Люк Бессон', price: 990)
film.year = 1994
film.balance = 5
film.update(year: 1994, balance: 7)

books = Books.new(title: 'Игноре', genre: 'Хит', price: 1102)
books.author = "Казявкин"
books.balance = 10
books.update(author: 'Казявкин кроказявкин', balance: 5)

puts film

puts books
