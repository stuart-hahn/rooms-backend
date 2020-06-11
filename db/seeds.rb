# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "stuart", password: "password")
User.create(username: "jenni", password: "password")

s = User.first
s.items.create(name: "Laptop", description: "MacBook Pro")
s.items.create(name: "Peloton", description: "Won't fit in a box. Need a ton of bubble wrap.")
s.items.create(name: "Mini Fridge", description: "Heavy, but sturdy enough to stack stuff on.")

j = User.second
j.items.create(name: "Laptop", description: "Macbook Pro")
j.items.create(name: "Bookshelves", description: "They fold right up.")
j.items.create(name: "Books", description: "Going to need A LOT of boxes.")
