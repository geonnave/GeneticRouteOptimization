

module Util
	
	def random_graph size

	end

	def random_genetic_code graph_size=4
		size = Random.rand(graph_size)
		genetic_code = Array(1..(size)).shuffle
		genetic_code.insert(0,0)
		genetic_code << graph_size
	end

	def template_graph_weights
		[[0, 4, 6, 10],
		 [4, 0, 2, 2 ],
		 [6, 2, 0, 3 ],
		 [10,2, 3, 0 ]] 
	end
end

