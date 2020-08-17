# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Igloo.destroy_all

igloos = Igloo.create! ([
    { name: "Ice Casa", address: "vallée du fort, 73400 Tignes", description: "chaleur et fraicheur" },
    { name: "Cold Water", address: "domaine de la vie, 73400 Tignes", description: "non mais à l'eau quoi !" },
    { name: "Fresh Savour", address: "impasse Sixtine, 73500 Combloux", description: "au frais" },
    { name: "Snow White", address: "lieu-dit de la montagne, 73945 Bourg Saint Maurice", description: "lieu zen et paisible" }
])

p "Created #{Igloo.name}"



users = User.create! ([
    { first_name: "Alexandre", last_name: "Sinn", email: "alex77@gmail.com", address: "2 rue du bal, 59000 Lille", password: "alexandre" },
    { first_name: "Cecile", last_name: "Tarn", email: "cecile@gmail.com", address: "8 rue de bretagne, 59160 Lomme", password: "cecile" },
])

p "Created #{User.name}"