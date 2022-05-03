# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "foe@seed.com", password: "123456", password_confirmation: "123456")

10.times do |i|
    Post.create(title: "Title #{i}", 
        body: "This is the text of body #{i}. which has to be at least 30 characters.", 
        user_id: User.first.id)
end
