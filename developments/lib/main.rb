require "./util.rb"
require "./graph.rb"
require "./element.rb"
require "./genetic_algorithm.rb"

include Util 

graph_weights = Util.random_graph 40, 10, 50

ga = GeneticAlgorithm.new(graph_weights)

graph = Graph.new(graph_weights)

ga.gen_population

graph_weights.each { |e| print e, "\n" }

puts
ga.population.each{|e| puts ("fitnes of #{e} is #{e.fitness}")}
puts
puts 

puts "graph length is #{graph_weights.length}; #{ga.population.length} elements in population"

puts
