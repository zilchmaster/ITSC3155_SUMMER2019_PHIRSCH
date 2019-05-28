# Lab 1
# Part I
def sum arr
  return arr.inject(0) { |sum, x| sum + x }
end

# Part II
def max_2_sum arr
  # YOUR CODE HERE
  return arr.sort.last(2).sum
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
end