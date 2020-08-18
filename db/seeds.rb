
require "open-uri"

puts"destroy igloo"
Igloo.destroy_all
puts"destroy user"
User.destroy_all


puts " create users and igloos"

  user_one = User.new(
      first_name: "Aurelien",
      last_name: "Max",
      email: "aurelien@lewagon.org",
      password: '123456')
  user_one.save

  user_two = User.new(
      first_name: "Sabine",
      last_name: "Stuck",
      email: "sabine@lewagon.org",
      password: '123456')

  user_two.save


    file = URI.open('https://images.unsplash.com/photo-1548278651-843b1d7431a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
    igloo_one = Igloo.new(
      name: "Igloo Snow white",
      address: "Tignes",
      description: Faker::Lorem.paragraph,
      user: user_one)
    igloo_one.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_one.save

    file = URI.open('https://images.unsplash.com/photo-1548279308-0a6768ea38e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
    igloo_two = Igloo.new(
      name: "Igloo Ice",
      address: "Val d'isère",
      description: Faker::Lorem.paragraph,
      user: user_one)
    igloo_two.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_two.save

    file = URI.open('https://images.unsplash.com/photo-1587500919989-e6954bd42c95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
    igloo_tree = Igloo.new(
      name: "Icy Igloo",
      address: "Vars",
      description: Faker::Lorem.paragraph,
      user: user_two)
    igloo_tree.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_tree.save

    file = URI.open('https://images.unsplash.com/photo-1582556825920-b6e7f6d7aa40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
    igloo_four = Igloo.new(
      name: "Blue Igloo",
      address: "Val Thorens",
      description: Faker::Lorem.paragraph,
      user: user_two)
    igloo_four.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_four.save

