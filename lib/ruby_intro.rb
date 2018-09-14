# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0,:+)
  
end

def sum_to_n?arr, n
  # YOUR CODE HERE
  len=arr.length
  h=Hash.new()
  for i in 0...len
    temp = n - arr[i]
    if h[temp]
    return true
    end
    h[arr[i]]=1
  end
    return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  a="Hello, "
  a << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !!(s[0] =~ /[b-df-hj-np-tv-z]+/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=="0"
    return true
  end
  /^[10]*00$/.match(s) !=nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor:isbn
  attr_accessor:price
  def initialize(isbn,price)
    raise ArgumentError,
      "Bad arguments" if isbn.empty? or price <= 0
    @isbn =isbn
    @price = price
  end
  def price_as_string
    sprintf("$%2.2f",@price)
  end
end
