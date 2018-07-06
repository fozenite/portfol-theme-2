# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Deserunt laborum adipisicing eiusmod dolore in fugiat.
    Amet consequat ut aliquip adipisicing consectetur adipisicing.
    Ipsum magna tempor nulla ea aliquip ipsum duis consectetur esse in aute excepteur.
    Incididunt anim occaecat velit officia nulla.
    Nulla consectetur velit aliquip duis eu."
  )
end

puts "10 blogs created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "5 skills created"

5.times do |portfolio_item|
  MyPortfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "Minim cupidatat quis excepteur voluptate incididunt aute et ipsum.Proident amet est cillum cupidatat sit proident.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end
puts "9 portfolio items created"