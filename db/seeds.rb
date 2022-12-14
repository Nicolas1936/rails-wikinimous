# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# new_article = Article.new(title: 'The meaning of life', content: "It's 42!")
# new_article.valid?  # => should be `true`
# new_article.save    # => should not display rollback warnings
# Article.last

require 'faker'

puts 'Creating 10 fake articles...'
10.times do
  articles = Article.new(
    title:    Faker::TvShows::Friends.character,
    content:  Faker::TvShows::Friends.quote
  )
  articles.save!
end
puts 'Finished!'
