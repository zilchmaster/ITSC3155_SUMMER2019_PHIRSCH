class Dessert
  # add code for setters and getters
  attr_accessor :name
  attr_accessor :calories
  
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    @calories < 200
  end
  def delicious?
    # your code here
    if @calories == 5 && @flavor == 'licorice'
      return false
    else
      return true
    end

  end
end

class JellyBean < Dessert
  # add code for setters and getters
  attr_accessor :flavor
  
  def initialize(flavor)
    # your code here
    @calories = 5
    @flavor = flavor
    @name = flavor + ' jelly bean'
  end
end
