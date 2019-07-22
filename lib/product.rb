#Encoding: UTF-8

class Product
  attr_accessor :balance, :price

  def initialize(parameters)
   @balance = parameters[:balance].to_i
   @price = parameters[:price].to_i
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def to_s
    "Стоимисть #{@price} рублей, осталось #{@balance} шт."
  end

  def update(parameters)
    @balance = parameters[:balance] if parameters[:balance]
    @price = parameters[:price] if parameters[:price]
  end
end
