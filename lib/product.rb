#Encoding: UTF-8

class Product
  attr_reader :balance, :price

  def initialize(parameters)
   @balance = parameters[:balance]
   @price = parameters[:price]
  end
end




