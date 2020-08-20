
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
      address: "Val Claret, Tignes",
      description: "Vivez comme les esquimaux dans la plus simple des sérénités :
      dormez sur des couvertures à même la glace et profitez d'une 
      coupe de champagne givrée lors du coucher de soleil en étant
      seul au monde. Appréciez enfin une balade dans la neige, en raquette
      ou en luge fabriquée en matière 100% naturelle.
      Un moment unique qui restera gravé dans votre esprit.",
      user: user_one)
    igloo_one.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_one.save

    file = URI.open('https://images.unsplash.com/photo-1548279308-0a6768ea38e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
    igloo_two = Igloo.new(
      name: "Ice Igloo",
      address: "Face de Bellevarde, Val d'isère",
      description: "Pour les personnes qui recherchent une expérience unique 
      à même la glace et la neige. 
      Une situation qui vous permettra
      de tester l'elixir de vie à travers le froid pour retrouver
      une 2è nature. Vous aurez à disposition tout le nécessaire pour 
      apprécier votre séjour, nuit comme jour.",
      user: user_one)
    igloo_two.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_two.save

    file = URI.open('https://images.unsplash.com/photo-1587500919989-e6954bd42c95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
    igloo_tree = Igloo.new(
      name: "Eyes Igloo",
      address: "route des chalets, Méribel",
      description: "Dans cet igloo, vous serez au plus proche de la nature. Entièrement
      conçu autour de son espace naturel et biodégradable selon les aléas de Mère Nature, 
      soyez surpris par sa force, elle vous laissera dormir en tout quiétude ou vous reveillera
      par sa colère. 
      Dépaysement et etonnement garantis",
      user: user_two)
    igloo_tree.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_tree.save

    file = URI.open('https://images.unsplash.com/photo-1582556825920-b6e7f6d7aa40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
    igloo_four = Igloo.new(
      name: "Night Igloo",
      address: "Place du Slalom, Val Thorens",
      description: "L'expérience, l'expérience, l'expérience !
      Soyez au contact même de la nautre, de sa générosité ou aussi
      des ses caprices selon ses envies. Vous finirez par dormir à la belle étoile...
      peut-être :)",
      user: user_two)
    igloo_four.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_four.save

    file = URI.open('https://images.unsplash.com/photo-1583527571525-e741039f5102?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
    igloo_five = Igloo.new(
      name: "Lilo z'igloo",
      address: "chemin de la droite du lac, 88400 Gérardmer",
      description: "Life is life ! dans cet igloo, pas de quoi 
      vous faire une grande restauration, pas de quoi prendre un bain
      chaud durant 45 minutes. Mais de quoi en prendre plein les yeux 
      pendant une ou plusieurs nuits.",
      user: user_two)
    igloo_five.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_five.save

    file = URI.open('https://images.unsplash.com/photo-1517776511573-14890f775b54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
    igloo_six = Igloo.new(
      name: "Blue Igloo",
      address: "Le Bonnet, Plagne Bellecote",
      description: "entre eau et neige, une superbe situation pour un moment 
      hors du commun ! vous vous sentirez comme chez vous sous ce magnifique manteau neigeux
      qui habille cet igloo unique",
      user: user_two)
    igloo_six.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_six.save

    file = URI.open('https://images.unsplash.com/photo-1561647784-37882c06e8bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
    igloo_seven = Igloo.new(
      name: "L'igloo du hameau",
      address: "Le Hameau, Flaine",
      description: "unique aventure au sein du domaine de Flaine, 
      dans un igloo à même les pistes avec tout le nécessaire pour vivre 
      une nuit exceptionnelle avant de chausser les skis pour une journée 
      de plaisir !",
      user: user_one)
    igloo_seven.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_seven.save

    file = URI.open('https://images.unsplash.com/photo-1594157172900-ade6d2888cd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
    igloo_eight = Igloo.new(
      name: "Dream igloo",
      address: "Route du plan du vah, Courchevel",
      description: "Le rêve pour une nuit inimaginable avant d'avoir tenté 
      l'expérience. Un domaine magique pour une nuit féérique qui n'attend plus que vous. 
      Testez vite pour avoir des étoiles plein les yeux dans ce cadre unique.",
      user: user_one)
    igloo_eight.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    igloo_eight.save


