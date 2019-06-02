# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

# Part II
def starts_with_consonant? s
  # YOUR CODE HERE
  if (s.length == 0)
    return false
  
  elsif ( /[a-z]/ === s[0].downcase && /[^aeiou]/ === s[0].downcase)
    return true
  
  else
    return false
  end

end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
  
end
