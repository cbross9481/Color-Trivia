class NewClass 
  attr_reader :y, :x, :color
  
  def initialize(color)
    roll = [0,1,2,3,4] 
    @x = roll.length
    @y = rand(0...x)
    @color = color
  end 

  def method_selection
  	if @color == "red"
  		p red 
  	elsif @color == "orange"
  		p orange
  	elsif @color == "yellow"
  		p yellow
  	elsif @color == "green"
  		p green
 	elsif @color == "blue"
  		p blue
  	elsif @color == "purple"
  		p purple
  	end 
  end 

  def red
    @question = ["The first color of the rainbow", "The American flag consist of white, blue and this color", "Roses are this color", "Marvel comic's background color is this", "There will be blood"]
    return @question[@y]
  end
  
  def orange
    @question = ["Not just a color but a fruit", "Nothing rhymes with this color", "Netherlands' soccer team wear this color", "Color of the jersey shore inhabitants", "Second color of the rainbow"]
    return @question[@y]
  end 
  
  def yellow
    @question = ["The color of the sun", "The color of dandelions", "The brightest color of the rainbow", "Song written by Coldplay", "Rhymes with Hello"]
    return @question[@y]
  end 
  
  def green
    @question = ["The color representing gardening", "The fourth color of the rainbow", "The color of peas", "The black superhero from the Justice League", "The color of Money"]
    return @question[@y]
  end 
  
  def blue
    @question = ["The color of the ocean", "The color of the sky", "Dory from Finding Nemo", "Food ingredient delivery service", "Penn State Lives Here"]
    return @question[@y]
  end 
  
  def purple
    @question = ["The color of non green grapes", "Big friendly dinasour you watched as a kid", "Violet is a mix between blue and this color", "Daphne from Scooby Doo dressed in this", "Song by Prince" ]
    return @question[@y]
  end 

  def random_questions
    @all = ["The color of non green grapes", "Big friendly dinasour you watched as a kid", "Violet is a mix between blue and this color", "Daphne from Scooby Doo dressed in this", "Song by Prince","The color of the ocean", "The color of the sky", "Dory from Finding Nemo", "Food ingredient delivery service", "Penn State Lives Here","The color representing gardening", "The fourth color of the rainbow", "The color of peas", "The black superhero from the Justice League", "The color of Money","The color of the sun", "The color of dandelions", "The brightest color of the rainbow", "Song written by Coldplay", "Rhymes with Hello","Not just a color but a fruit", "Nothing rhymes with this color", "Netherlands' soccer team wear this color", "Color of the jersey shore inhabitants", "Second color of the rainbow","The first color of the rainbow", "The American flag consist of white, blue and this color", "Roses are this color", "Marvel comic's background color is this", "There will be blood"]
    
    number_select = []
    questions = []
    
    until number_select.length == 4
      random = rand(0...29)
      if (number_select.include? random) == false 
        number_select << random
      end 
    end

    number_select.each do |x|
      questions << @all[x]
    end 
    
    return questions
    
end	

end 