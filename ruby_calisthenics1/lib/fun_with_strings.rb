module FunWithStrings
  def palindrome?
    # your code here
    self.gsub(/\W/,'').downcase == self.gsub(/\W/,'').downcase.reverse
  end
  def count_words
    # your code here
    myHash = Hash.new

    self.downcase.gsub(/[^a-z\s]/,'').split.each do |word|

      if myHash[word] != nil
        myHash[word] += 1
      else
        myHash[word] = 1
      end
    end
    
    myHash
  
  end
  def anagram_groups
    # your code here
    words = self.split
      results = Array.new

      words.each_with_index do |myWord, index| 
        unless results.any? { |arr| arr.include?(myWord) }

          temp_array = Array.new
          temp_array.push(myWord)

          words[index+1..-1].each do |myWord2|

            if myWord.is_anagram(myWord2)
              temp_array.push(myWord2)
            end
          end
          results.push(temp_array)
        end
    end
    results
  end

  def is_anagram(myWord)
    self.downcase.chars.sort.join == myWord.downcase.chars.sort.join
  end
  
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
