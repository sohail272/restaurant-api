# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 	Create restaurants and dishes

  Restaurant.create([{ id: 1, name: 'Taj' }, { id: 2, name: 'Oberio' }, { id: 3, name: 'Kings' }, { id: 4, name: 'Resort' }, { id: 5, name: 'Gaming' }])

  Restaurant.first.dishes.create([{name: "Paneer"}, {name: "Mutton"}])
  Restaurant.second.dishes.create([{name: "Curry"}, {name: "Rabadi"}])
  Restaurant.third.dishes.create([{name: "Yoghurt"}, {name: "Biryani"}])
  Restaurant.fourth.dishes.create([{name: "Lassi"}, {name: "Chicken"}])
  Restaurant.fifth.dishes.create([{name: "Masala"}, {name: "Duck"}])