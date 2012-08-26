

module Util
	
	def random_graph size=10, min=1, max=20
		rg = []
		0.upto(size-1) do |i| 
			rl = []
			0.upto(size-1) do |j|
				rl << 0 if i == j

				rl << min + ijbased_rand(i, j, max) + 1 unless i <= j
			end
			rg << rl
		end
		0.upto(size-1) do |i| 
			0.upto(size-1) do |j|
				next if i > j
				rg[i][j] = rg[j][i] unless i > j
			end
		end
		rg
	end

	def ijbased_rand i, j, max
		ij = (i-j).abs
		return Random.rand(max) if ij == 1
		cij = Random.rand(ij) + ij
		r = Random.rand(max)
		return (r + (r*cij))
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

