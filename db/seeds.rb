# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Seller.create(name: 'ime', rating:5)

Product.create!(id: 1, name: "product1", price: 400, seller: Seller.find(1))
Product.create!(id: 2, name: "product2", price: 70, seller_id: 1)
Product.create!(id: 3, name: "product3", price: 20.50, seller_id: 1)
Product.create!(id: 4, name: "product4", price: 30, seller_id: 1)
Product.create!(id: 5, name: "product5", price: 50.30, seller_id: 2)
Product.create!(id: 6, name: "product6", price: 33, seller_id: 2)