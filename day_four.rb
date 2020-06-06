require 'pry'

class Product

    @@all = []

    def initialize(store)
        @store = store
        @@all.push(self)
    end

    def store
        return @store
    end

    def self.all
        return @@all
    end

end

class Store
    def products
        result = []
        Product.all.each do |product|
            if(product.store == self)
                result.push(product)
            end
        end
        return result
    end
end

heb = Store.new()
sushi = Product.new(heb)
toilet_paper = Product.new(heb)
puts heb.products.length
