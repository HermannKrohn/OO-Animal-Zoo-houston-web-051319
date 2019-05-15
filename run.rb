require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
dog = Animal.new("Husky", 180 ,"Budlight")
dog1 = Animal.new("Husky", 160 ,"Johnny")
dog2 = Animal.new("Husky", 210 ,"Hero")
cat = Animal.new("Tiger", 300 ,"Eye")
bird = Animal.new("Parrot", 180 ,"Green")
dog.zoo = "New York Zoo"
dog1.zoo = "New York Zoo"
dog2.zoo = "California Zoo"
cat.zoo = "Texas Zoo"
bird.zoo = "New York Zoo"

new_york_zoo = Zoo.new("New York Zoo", "New York")
california_zoo = Zoo.new("California Zoo", "California")
texas_zoo = Zoo.new("Texas Zoo", "Texas")

binding.pry
puts "done"