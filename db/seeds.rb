puts "Deleting all articles..."
Article.destroy_all
puts "Deleting all clients..."
Client.destroy_all
puts "Deleting all events..."
Event.destroy_all
puts "Done deleting all events"
puts "Deleting user"
User.destroy_all
puts "Done deleting user"

puts "Implementing the Seeds..."

# owners
puts "Seeding 1 User..."

# Users
johanne = User.new(first_name: "Johanne", last_name: "Gueguen", email: "johanne.gueguen@gmail.com", password: "secret")
johanne.save!

puts "Seeding events..."
# Evenement
event_1 = Event.new(title: 'Soirée', description: 'Soirée conviviale blablabla', kind: 'Soirée', address: '9 rue lulli, Brest', start_date: '2020-03-31', end_date: '2020-04-01', link: "https://weezevent.com/fr/")
event_1.user = johanne
event_1.save!

event_2 = Event.new(title: 'Cours de Salsa',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  kind: 'Autre',
  address: '41 Place des Otages, Morlaix',
  start_date: '2020-04-15',
  end_date: '2020-04-15',
  price: 30,
  start_time: "13:30",
  end_time: "17:30",
  link: "https://weezevent.com/fr/")
event_2.user = johanne
event_2.save!

event_3 = Event.new(title: 'Randonnée', description: 'Randonnée conviviale blablabla', kind: 'Autre', address: '12 rue Jacques bossuet, Quimper', start_date: '2020-04-20', end_date: '2020-04-20', link: "https://weezevent.com/fr/")
event_3.user = johanne
event_3.save!

event_4 = Event.new(title: 'Soirée', description: 'Soirée conviviale blablabla', kind: 'Soirée', address: '2 rue Clément Marot, Brest', start_date: '2020-04-20', end_date: '2020-04-20', link: "https://weezevent.com/fr/")
event_4.user = johanne
event_4.save!

puts "Seeding clients..."

client1 = Client.new(first_name: "Justine", last_name: "Barbault", birthdate: "1990-01-01", email: "justinebarb@gmail.com", gender: "Feminin")
client1.user = johanne
client1.save!

client2 = Client.new(first_name: "Justin", last_name: "Barbiche", birthdate: "1985-12-01", email: "justinbarb@gmail.com", gender: "Masculin")
client2.user = johanne
client2.save!

client3 = Client.new(first_name: "Justice", last_name: "Barbebleue", birthdate: "1987-06-01", email: "justbarb@gmail.com", gender: "Feminin")
client3.user = johanne
client3.save!

puts "Seeding articles..."

# article1 = Article.new(title: "Nouvelle façon de rencontrer des célibataires", text: "blablablabla")
# article1.user = johanne
# article1.save!

# article2 = Article.new(title: "Attention au coronavirus", text: "attention il est très très méchant")
# article2.user = johanne
# article2.save!

puts "__________________________________________________________"
puts "Finished Seeding!"
