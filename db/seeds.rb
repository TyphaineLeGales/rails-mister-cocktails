# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts "create ingredient"

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")
gin = Ingredient.create(name: "gin")
vermouth = Ingredient.create(name: "Dry vermouth")
vodka = Ingredient.create(name: "vodka")
champagne = Ingredient.create(name: "champagne")
orange = Ingredient.create(name: "orange Juice")
tequila = Ingredient.create(name: "Tequila")

puts "create cocktail"

martini = Cocktail.create(name: "Dry Martini")
mimosa = Cocktail.create(name: "Mimosa")
bloody_mary = Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Tequila Sunrise")
Cocktail.create(name: "Moscow Mule")
Cocktail.create(name: "Sex on the beach")
Cocktail.create(name: "Mojito")


puts "create dose"

Dose.create(description: "3oz", cocktail_id: martini.id, ingredient_id: gin.id)
Dose.create(description: "10oz", cocktail_id: mimosa.id, ingredient_id: champagne.id)
Dose.create(description: "20oz", cocktail_id: mimosa.id, ingredient_id: orange.id)

