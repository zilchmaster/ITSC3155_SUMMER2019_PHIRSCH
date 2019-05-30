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
  if (arr.length == 0)
    return false
  end
  if (arr.length == 1)
    return false
  end
  
  for x in (0..(arr.length-2))
    for y in ((x+1)...arr.length)
      
     return true if arr[x]+arr[y] == n
        
    end
  end
  
  return false
end