# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each { |x| s += x } unless arr.count == 0
  s
end

def max_2_sum arr
  if arr.count == 0 then return 0 end
  if arr.count == 1 then return arr.at 0 end
  descending = arr.sort.reverse
  descending.at(0) + descending.at(1)
end

def sum_to_n? arr, n
  ascending = arr.sort
  ascending.each_index { |i|
    ascending.each_index { |j|
      if j >= i then break end
      if ascending.at(i) + ascending.at(j) == n then return true end
    }
  }
  false
end

# Part 2

def hello(name)
  "Hello, ".concat name
end

def starts_with_consonant? s
  if s.length == 0 then return false end
  if s.match('^\W') then return false end
  !s.match?('^[aeiouAEIOU].*')
end

def binary_multiple_of_4? s
  if !s.match?('^[10]+$') then return false end
  if s.match?('^0+$') then return true end
  s.match?('^0*[10]*00$')
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn == "" or price <= 0 then throw ArgumentError end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % [price]
  end
end
