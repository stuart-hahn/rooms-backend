# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: "Stuart", password: "password")
# User.create(username: "Jenni", password: "password")

s = User.first
s.items.create(name: "Laptop")
s.items.create(name: "Peloton")
s.items.create(name: "Mini Fridge")

j = User.second
s.items.create(name: "Laptop")
s.items.create(name: "Bookshelves")
s.items.create(name: "Books")
