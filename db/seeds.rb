# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
data = JSON.parse(open(url).read)

data['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end

Cocktail.destroy_all
cocktails = %w(tropico red-minty martini mojito brisky gloom tea-rock summery berry-boost)
urls = %w(https://static.pexels.com/photos/109275/pexels-photo-109275.jpeg https://images.pexels.com/photos/27433/pexels-photo-27433.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/90786/pexels-photo-90786.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/160150/pexels-photo-160150.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/128242/pexels-photo-128242.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/34293/lime-club-soda-drink-cocktail.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/25921/pexels-photo-25921.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/132737/pexels-photo-132737.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/59053/pexels-photo-59053.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb)

 i = 0
 cocktails.each do |cocktail|
  Cocktail.create(name: cocktail, remote_photo_url: urls[i] )
  i += 1
end


