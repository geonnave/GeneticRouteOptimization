require "./util.rb"
require "./graph.rb"

class GeneticAlgorithm
	include Util
	attr_reader :population
	
	def initialize graph_weights ,pop_length=400, cross_rate=0.2, gen_range=0.7
		@graph = Graph.new(graph_weights)
		@population = []
		@pop_length = pop_length
		@cross_rate = cross_rate
		@gen_range = gen_range
	end

	def generation

	end

	def gen_population
		genetic_codes = []
		@pop_length.times do 
			genetic_codes << random_genetic_code(@graph.size)
		end
		genetic_codes.uniq!
		genetic_codes.each { |genetic_code| @population << Element.new(genetic_code,@graph) }
	end

	def select_next_generation

	end

	def cross
		
	end

end

