# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 1..50
  name = Faker::Name
  email = Faker::email

  user=User.new
  user.email = email
  user.name = name
  user.save

  title = "Random"
  content = "Test"
  article = Article.new
  article.title = title
  article.content = content
  article.user = user
  article.save
    for ii in 1..10
      comments = Comment.new
      comments.user = user
      comments.article=article
      comments.message = Faker::Lorem.paragraph
      comments.save
    end

end