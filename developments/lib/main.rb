require "./util.rb"
require "./graph.rb"
require "./element.rb"
require "./genetic_algorithm.rb"

include Util 

graph_weights = Util.random_graph 40, 10, 50

graph = Graph.new(graph_weights)

ga = GeneticAlgorithm.new(graph)


ga.gen_population

graph_weights.each { |e| print e, "\n" }

puts
ga.population.each{|e| puts ("fitnes of #{e} is #{e.fitness}")}
puts
puts "graph length is #{graph_weights.length}; #{ga.population.length} elements in population"
puts 

best_element = ga.run
puts ("THE BEST ELEMENT!! - fitnes of #{best_element} is #{best_element.fitness}")



puts
