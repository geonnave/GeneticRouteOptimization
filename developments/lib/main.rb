require "./util.rb"
require "./graph.rb"
require "./element.rb"
require "./genetic_algorithm.rb"

include Util 

graph_weights = Util.random_graph 15, 10, 50

graph = Graph.new(graph_weights)

ga = GeneticAlgorithm.new(graph)


init_pop = ga.gen_population 1

puts
puts "graph length is #{graph_weights.length}; #{ga.population.length} elements in population"
puts 

ga.population = init_pop
puts init_pop
best = ga.run
puts ga.to_s + best.to_s + " => " + best.fitness.to_s

ga.population = init_pop
puts init_pop
ga.number_of_generations = 60
best = ga.run
puts ga.to_s + best.to_s + " => " + best.fitness.to_s

# ga.population = init_pop.clone
# ga.number_of_generations = 100
# best = ga.run
# puts ga.to_s + best.to_s + " => " + best.fitness.to_s

# ga.population = init_pop.clone
# ga.number_of_generations = 140
# best = ga.run
# puts ga.to_s + best.to_s + " => " + best.fitness.to_s

# ga.population = init_pop.clone
# ga.number_of_generations = 500
# best = ga.run
# puts ga.to_s + best.to_s + " => " + best.fitness.to_s



# ga.number_of_generations = 
# ga.pop_length = 
# ga.cross_rate = 
# ga.mutation_rate = 
# ga.gen_range = 