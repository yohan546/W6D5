# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all 
ApplicationRecord.connection.reset_pk_sequence!("cats")

spot = Cat.create!(name: "Spot", birth_date: "04/12/1995",color: "orange", sex: "M", description: "has four spots") 
leo = Cat.create!(name: "Leo", birth_date: "15/02/2000",color: "black", sex: "M", description: "is a mean cat")
sassy = Cat.create!(name: "Sassy", birth_date: "24/12/1996",color: "white", sex: "F", description: "is a cat")