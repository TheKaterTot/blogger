# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.destroy_all
Tag.destroy_all
Comment.destroy_all

40.times do
  Article.create(title: Faker::StarWars.planet, body: Faker::StarWars.quote)
end

20.times do
  Tag.create(name: Faker::StarWars.specie)
end

articles = Article.all
tags = Tag.all

articles.map do |article|
  5.times do
    article.tags << tags.sample
    Comment.create(author_name: Faker::StarWars.character, body: Faker::StarWars.quote, article: article)
  end
end
