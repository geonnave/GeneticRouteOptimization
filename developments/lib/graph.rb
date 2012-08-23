

class Graph

	def initialize weights
		@weights = weights
	end

	def get_weight nodea, nodeb
		@weights[nodea][nodeb]
	end

end