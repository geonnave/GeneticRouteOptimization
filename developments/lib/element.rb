

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

	def crossing another
		childrens = []
		if another.genetic_code.size == self.genetic_code.size
			index = Random.rand(another.genetic_code.size)
			gc_a = @genetic_code
			gc_b = another.genetic_code
			gc_a[index],gc_b[index] = gc_b[index],gc_a[index]
			element_a = Element.new(gc_a,@graph)
			element_b = Element.new(gc_b,@graph)
			childrens << element_a if element_a.is_valid?
			childrens << element_a if element_b.is_valid?
		end
		childrens
	end

	def is_valid?
		(@genetic_code.first == 0) and (@genetic_code.last == (@graph.size-1)) and (!genetic_code_has_repetitions)
	end

	def genetic_code_has_repetitions
		test = false
		@genetic_code.each{|c| test = true if (@genetic_code.count(c) > 1)}
		test
	end
	
end
