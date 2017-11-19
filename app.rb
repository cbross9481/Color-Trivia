class Object 
  attr_reader :y, :x
  
  def initialize
    roll = [0,1,2,3,4] 
    @x = roll.length
    @y = rand(0...x)
  end 
  
  def red
    @question = ["The first color of the rainbow", "The American flag consist of white, blue and this color", "Roses are this color", "Marvel comic's background color is this", "There will be blood"]
  end
  
  def orange
    @question = ["Not just a color but a fruit", "Nothing rhymes with this color", "Netherlands' soccer team wear this color", "Color of the jersey shore inhabitants", "Second color of the rainbow"]
  end 
  
  def yellow
    @question = ["The color of the sun", "The color of dandelions", "The brightest color of the rainbow", "Song written by Coldplay", "Rhymes with Hello"]
  end 
  
  def green
    @question = ["The color representing gardening", "The fourth color of the rainbow", "The color of peas", "The black superhero from the Justice League", "The color of Money"]
  end 
  
  def blue
    @question = ["The color of the ocean", "The color of the sky", "Dory from Finding Nemo", "Food ingredient delivery service", "Penn State Lives Here"]
  end 
  
  def purple
    @question = ["The color of non green grapes", "Big friendly dinasour you watched as a kid", "Violet is a mix between blue and this color", "Daphne from Scooby Doo dressed in this", "Song by Prince" ]
  end 

  def random_questions
    random = rand(0...29)
    @all = ["The color of non green grapes", "Big friendly dinasour you watched as a kid", "Violet is a mix between blue and this color", "Daphne from Scooby Doo dressed in this", "Song by Prince","The color of the ocean", "The color of the sky", "Dory from Finding Nemo", "Food ingredient delivery service", "Penn State Lives Here","The color representing gardening", "The fourth color of the rainbow", "The color of peas", "The black superhero from the Justice League", "The color of Money","The color of the sun", "The color of dandelions", "The brightest color of the rainbow", "Song written by Coldplay", "Rhymes with Hello","Not just a color but a fruit", "Nothing rhymes with this color", "Netherlands' soccer team wear this color", "Color of the jersey shore inhabitants", "Second color of the rainbow","The first color of the rainbow", "The American flag consist of white, blue and this color", "Roses are this color", "Marvel comic's background color is this", "There will be blood"]
    return @all[random]
  end
  
end 