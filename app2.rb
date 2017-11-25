require 'csv'

class NewClass 
  attr_reader :y, :x, :color, :array
  
  def initialize(color)
    @y = rand(0...5)
    @color = color
    @array = Array.new
    CSV.foreach("questions.csv", headers: true, header_converters: :symbol) do |csv|
      @array << csv
    end 
  end 

  def method_selection
  	if @color == "red"
  		red 
  	elsif @color == "orange"
  		orange
  	elsif @color == "yellow"
  		yellow
  	elsif @color == "green"
  		green
 	elsif @color == "blue"
  		blue
  	elsif @color == "purple"
  		 purple
  	end 
  end 

  def red
    @question = []
    @array.each do |x|
      if x[:color] == "red"
        @question << x[:question] 
      end    
    end
    return @question[@y]
  end
  
  def orange
     @question = []
    @array.each do |x|
      if x[:color] == "orange"
        @question << x[:question] 
      end    
    end
    return @question[@y]
  end 
  
  def yellow
       @question = []
    @array.each do |x|
      if x[:color] == "yellow"
        @question << x[:question] 
      end    
    end
    return @question[@y]
  end 
  
  def green
     @question = []
    @array.each do |x|
      if x[:color] == "green"
        @question << x[:question] 
      end    
    end
    return @question[@y]
  end 
  
  def blue
     @question = []
    @array.each do |x|
      if x[:color] == "blue"
        @question << x[:question] 
      end    
    end
    return @question[@y]
  end 
  
  def purple
     @question = []
    @array.each do |x|
      if x[:color] == "purple"
        @question << x[:question] 
      end    
    end
    return @question[@y]
  end 

  def random_questions
    @all = []
    @array.each do |x|
      @all << x[:question]
    end 

    @all
    
    number_select = []
    questions = []
    
    until number_select.length == 3
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