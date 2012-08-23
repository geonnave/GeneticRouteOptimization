

class Element
	attr_accessor :genetic_code

	def initialize genetic_code
		@genetic_code = genetic_code
	end

	def fitness graph
		sum = 0
		(1..(@genetic_code.length-1)).each do |i|
			sum += graph.weight(@genetic_code[i-1], @genetic_code[i])
		end
	end

	def <=>(another)
		fitness <=> another.fitness
	end
	
end