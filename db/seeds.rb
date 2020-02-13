# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "**** Seeding Database ****"

puts "... preparing to fetch ... "
require 'json'
require 'open-uri'

puts "... fetching ingredient list from TheCocktailDB.com..."
ingredient_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = open(ingredient_url).read
ingredients = JSON.parse(ingredients)
ingredients = ingredients["drinks"]
ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end





puts "-->Parsing ingredient list into useful array..."

puts ""

puts "Creating ingredients..."

puts "3 ingredient created!"

