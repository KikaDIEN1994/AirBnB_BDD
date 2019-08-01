require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

dogs = []
dogsitters = []

cities_name = ["Oran", "Tokyo", "NYC", "Londres", "Paris", "Bangkok", "Marseille", "Alger", "Rio", "Madrid"]
cities = []

10.times do |i|
	cities << City.new(city_name: cities_name[i])
	cities[i].save
end

15.times do |i|
	i = 4 if i > 10
	dogs << Dog.create(name:Faker::Creature::Dog.name, city: cities[i])
end

12.times do |i|
	i = 2 if i > 10
	dogsitters << Dogsitter.create(name:Faker::Name.first_name, city: cities[i])
end

12.times do |i|
	Stroll.create dog: dogs[i], dogsitter: dogsitters[i]
end

for num in 1..4
	Stroll.create dog: dogs[11+num], dogsitter: dogsitters[num]
end