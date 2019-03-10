User.create!(
  email: "rohit@rohitmoza.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "moza.rohit@gmail.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User"
)

puts "1 Regular user created"


topics = ["Ruby on Rails", "Front End", "HTML", "CSS", "Business", "Software", "Dev Skills", "Project Management", "Product Management", "JavaScript", "React", "Angular", "Vue", "Back End", "Design"]
topics.each do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "#{topics.length} topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Deserunt laborum adipisicing eiusmod dolore in fugiat.
    Amet consequat ut aliquip adipisicing consectetur adipisicing.
    Ipsum magna tempor nulla ea aliquip ipsum duis consectetur esse in aute excepteur.
    Incididunt anim occaecat velit officia nulla.
    Nulla consectetur velit aliquip duis eu.",
    topic_id: Topic.last.id
  )
end

puts "10 blogs created"

skills = ["Ruby on Rails", "React", "JavaScript", "HTML/CSS/SASS", "SQL", "DevOps", "Automated Testing", "Angular JS v1", "Vue JS", "Node JS"]
skills.each do |skill|
  Skill.create!(
    title: "#{skill}",
    percent_utilized: 70
  )
end
puts "#{skills.length} skills created"

8.times do |portfolio_item|
  MyPortfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Minim cupidatat quis excepteur voluptate incididunt aute et ipsum.Proident amet est cillum cupidatat sit proident.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  MyPortfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Minim cupidatat quis excepteur voluptate incididunt aute et ipsum.Proident amet est cillum cupidatat sit proident.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end
puts "9 portfolio items created"

3.times do |technology|
  MyPortfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end
puts "3 technologies created"