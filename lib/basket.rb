#Encoding:UTF-8

class Basket

  def initialize
    @products = []
  end

  def add(product)
    @products << product
  end

  def take_away(parametr)
     parametr.balance -= 1
  end

  def check
    @products.sum(&:price)
  end

  def to_s
    @products.join("\n")
  end
end
