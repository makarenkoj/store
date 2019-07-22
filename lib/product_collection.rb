# encoding: utf-8

class ProductCollection
  PRODUCT_TYPES = {
    film: {dir: 'films', class: Film},
    books: {dir: 'books', class: Books},
    disc: {dir: 'discs', class: Disc}
  }

  def initialize(products = [])
    @products = products
  end

  def delet_nil
    @products.delete_if {|products| products.balance.zero? }
  end

  def self.from_dir(dir_path)
    products = []

    PRODUCT_TYPES.each do |type, hash|

      product_dir = hash[:dir]

      product_class = hash[:class]

      Dir[dir_path + '/' + product_dir + '/*.txt'].each do |path|
        products << product_class.from_file(path)
      end
    end

    self.new(products)
  end

  def to_a
    @products
  end

  def sort!(parameters)
    case parameters[:by]
    when :title then @products.sort_by!(&:to_s)
    when :price then @products.sort_by!(&:price)
    when :balance then @products.sort_by!(&:balance)
    end

    @products.reverse! if parameters[:type] == :asc
    self
  end

  def to_s
    @products.to_a.map.with_index(1) { |product, index| "#{index}. #{product}" }.join("\n")
  end
end
