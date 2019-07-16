#Encoding: UTF-8

class Product
  attr_accessor :balance, :price

  def initialize(parameters)
   @balance = parameters[:balance]
   @price = parameters[:price]
  end

  def from_file

  end


  def to_s
    "Стоимисть #{@price}рублей, осталось #{balance} "
  end

  def update(parameters)
    @balance = parameters[:balance] if parameters[:balance]
    @price = parameters[:price] if parameters[:price]
  end
end




