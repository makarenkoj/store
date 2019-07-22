#Encoding:UTF-8
#
# Показывать асортимент товыара
# Складовать товар который выбрал пользователь
# Сумировать сумму покупки
# Выводить конечный результат (чек)

class Basket
  def initialize
    @products = []
  end

  def add(product)
    @products << product
  end

  def check
    @products.sum(&:price)
  end

  def to_s
    @products.join("\n")
  end
end
