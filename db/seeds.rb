# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "Cleaning up database..."
# Movie.destroy_all
# puts "Database cleaned"
puts "Destroying Orders.."
puts "Orders destroyed!" if Order.destroy_all
puts "Destroying Services..."
puts "Services destroyed!" if Service.destroy_all
puts "Destroying Users.."
puts "Users destroyed!" if User.destroy_all

puts "Generating seed..."

CATEGORIES = %w(construction education health programing)

User.create(email: "billgates@hotmail.com", first_name: "Bill", last_name: "Gates", city: "Boston", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[1], description:
    "Computer Classes:  I'll teach you how to begin at your garage and fund a large Enterprise!",
    price: 1000000, city: User.last.city)
  Service.create(user_id: User.last.id, category: CATEGORIES[1], description:
    "Lecture:  How can we surpass a pandemic - Bill and Melinda Gates Foundation experiences.",
    price: 200000, city: User.last.city)


User.create(email: "alberteinstein@ig.com", first_name: "Albert", last_name: "Einstein", city: "Frankfurt", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[1], description:
    "Lessons: E = MC2 for dummies.  A journey into phisics!",
    price: 2000, city: User.last.city)

User.create(email: "drauzio@globo.com", first_name: "Drauzio", last_name: "Varella", city: "São Paulo", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[2], description:
    "Hospitalizations in case of covid. I provide adequate treatment.",
    price: 250, city: User.last.city)

User.create(email: "oscarniemeyer@bol.com", first_name: "Oscar", last_name: "Niemeyer", city: "Brasília", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[1], description:
    "Lecture: How to prioritize curves in your buildings - a modern approach.",
    price: 8000, city: User.last.city)

User.create(email: "drhouse@universal.com", first_name: "Doctor", last_name: "House", city: "Princeton", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[2], description:
    "I provide the resolution of general health problems. Free if the patient agrees to participate in the recording of an episode at Universal Studios.",
    price: 0, city: User.last.city)

User.create(email: "mariecurie@radio.com", first_name: "Marie", last_name: "Curie", city: "Paris", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[1], description:
    "Lecture: From Radio to Nobel Prize - A History of one the story of one of the first female scientists",
    price: 0, city: User.last.city)

User.create(email: "imhotep@egypt.com", first_name: "Imhotep", last_name: "", city: "Cairo", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[0], description:
    "Problems with large buildings and lack of resorces?  don't worry, i build monoliths with just sand and labor at zero cost.",
    price: 500000, city: User.last.city)

User.create(email: "greys@anatomy.com", first_name: "Meredith", last_name: "Grey", city: "Seattle", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[0], description:
    "Need an emergency surgery?  Long surgeries?  Count on me and my team.",
    price: 10000, city: User.last.city)

User.create(email: "isa@le-vagone.com", first_name: "Isabela", last_name: "Madeiras", city: "Rio de Janeiro", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[3], description:
    "Problems with your App?  I solve it for you with an awesome Front-End!",
    price: 20000, city: User.last.city)

User.create(email: "luca@le-vagone.com", first_name: "Luca", last_name: "Martinhos", city: "Rio de Janeiro", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[3], description:
    "Problems with your App?  I solve it for you with a perfect Back-End!",
    price: 20000, city: User.last.city)

User.create(email: "uira@le-vagone.com", first_name: "Uirà", last_name: "Gravata", city: "Rio de Janeiro", password: "123456", password_confirmation: "123456")
  Service.create(user_id: User.last.id, category: CATEGORIES[3], description:
    "Problems with your App?  I solve it for you with a perfect Back-End!",
    price: 20000, city: User.last.city)

Order.create(user: User.first, service_id: 4, city: User.first.city)
Order.create(user: User.first, service_id: 8, city: User.first.city)
Order.create(user: User.first, service_id: 10, city: User.first.city)
Order.create(user: User.first, service_id: 11, city: User.first.city)

Order.create(user: User.last, service_id: 1, city: User.last.city)
Order.create(user: User.last, service_id: 2, city: User.last.city)

puts "End of Seed!"
