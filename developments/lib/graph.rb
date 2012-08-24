

class Graph
	attr_reader :weights

	def initialize weights
		@weights = weights
	end

	def get_weight nodea, nodeb
		@weights[nodea][nodeb]
	end

	def size
		@weights.size
	end

end
