# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all

puts 'Creating 5 fake movies...'
5.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Quote.yoda,
    poster_url: Faker::Internet.url,
    rating: rand(0..10)
  )
  # puts "Created:#{movie.title}, #{movie.overview}, #{movie.poster_url}, #{movie.rating}"
end
