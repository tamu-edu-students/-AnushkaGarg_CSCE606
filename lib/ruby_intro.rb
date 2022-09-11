# frozen_string_literal: true

# Part 1

def sum(arr)
  sum_val = 0
  #Running a for loop for adding each element
  for val in arr
    sum_val = sum_val + val
  end
  return sum_val
end

def max_2_sum(arr)
  #Check if array is empty
  if arr.empty?
    return 0
  #Check if array has only 1 element
  elseif arr.length == 1
    return arr[0]
  else
    return arr.max(2).sum
  end
end

def sum_to_n?(arr, number)
  for i in 0...arr.size()-1
    for j in i+1...arr.size()
      if arr[i] + arr[j] == number
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return String.new('Hello, ').concat(name)
end

def starts_with_consonant?(string)
  return /^[^aeiou\W]/i.match(string) != nil
end

def binary_multiple_of_4?(string)
  if !string.empty?
   return string.count('01') == string.size && string.to_i % 4 == 0
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if isbn.empty? || price <= 1
      raise ArgumentError.new("Invalid arguments passed")
    else
      @isbn = isbn
      @price = price
    end
  end
  def price_as_string()
    String.new('$').concat('%.2f' % @price.to_s)
  end
end

