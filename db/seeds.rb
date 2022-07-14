# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{ name: "Demo User", photo: "https://i.imgur.com/XyqQZ.jpg", bio: "This is a demo user. Please do not use this user for any purpose." }, { name: "John Doe", photo: "https://i.imgur.com/XyqQZ.jpg", bio: "This is a demo user. Please do not use this user for any purpose." }])