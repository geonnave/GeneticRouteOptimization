

module Util
	
	def random_graph size

	end

	def random_genetic_code graph_size=4
		size = Random.rand(graph_size-1)
		genetic_code = Array(1..(size)).shuffle
		genetic_code.insert(0,0)
		genetic_code << graph_size-1
	end

	def template_graph_weights
		# [[0, 4, 6, 10],
		#  [4, 0, 2, 2 ],
		#  [6, 2, 0, 3 ],
		#  [10,2, 3, 0 ]] 
		[[0, 4, 6, 10, 12, 3],
		 [4, 0, 2, 2, 5, 7 ],
		 [6, 2, 0, 3, 9, 1 ],
		 [10,5, 3, 0, 2, 5],
		 [6, 8, 3, 14, 0, 5],
		 [1, 2, 3, 4, 2, 0]] 
	end
end

