# Ruby Basics Part 3

class BookInStock
    # YOUR CODE HERE
    attr_accessor :isbn
    attr_accessor :price
    
    def initialize(isbn, price)
        # your code here
        @isbn = isbn
        @price = price
        
        if isbn == ''
            raise ArgumentError
        end
        if price <= 0
            raise ArgumentError
        end
        
    end
    
    def price_as_string
        return format("$%.2f", @price)
    end
    
end