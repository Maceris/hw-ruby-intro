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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
