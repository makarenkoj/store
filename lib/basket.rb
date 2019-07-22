#Encoding:UTF-8

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
