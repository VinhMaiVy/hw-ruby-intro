# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each {|e| s += e}
  return s
end

def max_2_sum arr
  if arr.size == 0 then return 0 end
  if arr.size == 1 then return arr[0] end
  t_arr = arr.sort
  return t_arr[-1] + t_arr[-2]
end

def sum_to_n? arr, n
  s = arr.size
  if s == 1 then return false end
  for i in (0..s-1)
    for j in (0..s-1)
      if (i != j) && (arr[i] + arr[j] == n) then 
        return true 
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if (s =~ /\A(?=[^aeiou])(?=[a-z])/i) then return true else return false end
end

def binary_multiple_of_4? s
  return false if (s.size == 0) || (s.strip =~ /\D/)
  s.to_i(2)%4 == 0
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize (isbn, price)
    raise ArgumentError, "ISBN can't be an empty string" if isbn.length == 0
    raise ArgumentError, 'Price should be a positive number' if price<=0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string 
    return "$%2.2f" % @price
  end
  
end


#puts sum([1,2,3,4,5])
#puts sum([])
#uts max_2_sum([1,2,3,3])
#puts sum_to_n?([1,2,3,4,5], 5)
#puts sum_to_n?([-1,-2,3,4,5,-8], 12)
#puts sum_to_n?([], 0)

#puts hello("Dan")
#puts starts_with_consonant?("abcd")
#puts starts_with_consonant?("Ocde")
#puts starts_with_consonant?("00bcde")
#puts starts_with_consonant?("Zbcde")
#puts binary_multiple_of_4?("000a1")
#puts binary_multiple_of_4?("10000")
#puts binary_multiple_of_4?("10001")
#b = BookInStock.new("", 10.0)
#print b
#b = BookInStock.new("ISBN", 0.0)
#print b
#b = BookInStock.new("ISBN", -5)
#print b
#b = BookInStock.new("ISBN", 10.0)
#p b
