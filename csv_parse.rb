require 'csv'# 
require_relative 'app2'
class Object 
	def test
		array = Array.new
		question = Array.new

		CSV.foreach("questions.csv", headers: true, header_converters: :symbol) do |csv|
			array << csv
		end 

		array.each do |x|
			if x[:color] == "red"
				question << x[:question]

			end 
		end 
	end
end  

p sample = Object.new
p sample.test