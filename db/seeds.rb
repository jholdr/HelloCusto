# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.where(name:"Medical").first_or_create(name: "Medical")
Category.where(name:"Retail").first_or_create(name: "Retail")
Category.where(name:"Food").first_or_create(name: "Food")
Category.where(name:"Legal").first_or_create(name: "Legal")
Category.where(name:"Finance").first_or_create(name: "Finance")
Category.where(name:"Tech").first_or_create(name: "Tech")
