

class Element
	attr_accessor :genetic_code

	def initialize genetic_code,graph
		@graph = graph
		@genetic_code = genetic_code
	end

	def fitness
		sum = 0
		if @genetic_code.size == 2
			sum = @graph.get_weight(@genetic_code[0], @genetic_code[1])
		else
			(@genetic_code.size-1).times do |i|
					sum += @graph.get_weight(@genetic_code[i], @genetic_code[i+1])
			end
		end
		sum
	end

	def <=>(another)
		fitness <=> another.fitness
	end

	def to_s
		@genetic_code.to_s
	end
	
end
