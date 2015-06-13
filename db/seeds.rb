# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(firstname: "Jan",
             lastname: "Kowalski",
             password: "password",
             password_confirmation: "password",
             email: "asd@asd.com",
             admin: true)

User.create!(firstname: "Mateusz",
             lastname: "Nowak",
             password: "password",
             password_confirmation: "password",
             email: "sdf@asd.com",
             admin: false)

Category.create!(name: "films")

Product.create!(title: "Hobbit",
                description: "fantasy",
                price: 15,
                user_id: 1,
                category_id: 1)
Product.create!(title: "Black hawk down",
                description: "war film",
                price: 20.00,
                user_id: 2,
                category_id: 1)

Review.create!(content: "Great film",
               rating: 5.0,
                user_id: 1,
                product_id: 1)

Review.create!(content: "Quite good",
               rating: 4.0,
               user_id: 1,
               product_id: 1)
