# When done, submit this entire file to the autograder.

# Part 1

def sum arr
total = 0
return 0 if arr.empty?
 
 arr.each do |x|
   total +=  x
end
 total

end

def max_2_sum arr
  total = 0
  
return 0 if arr.empty?
return arr.at(0) if arr.length == 1
total = arr.sort[-2]
total += arr.sort[-1]
return total
end

def sum_to_n? arr, n
 !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  temp = "Hello, "
temp.concat(name) 
return temp
end

def starts_with_consonant? s
 return false if s.empty?
    return true if s[0].match(/b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|y|x|z/)
    return true if s[0].match(/B|C|D|F|G|H|J|K|L|M|N|P|Q|R|S|T|V|W|Y|X|Z/)
return false
end

def binary_multiple_of_4? s
    return false if s.nil?
  s =~ /^[01]*1[01]*00$/
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  attr_accessor :isbn, :price   
   
    def initialize(isbn, price)
        raise  ArgumentError.new() if isbn.empty? || (price<=0)
      @isbn = isbn
@price = Float(price)
    end
    
def price_as_string
     "$%.2f" % @price
end
end
