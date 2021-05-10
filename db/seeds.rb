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

User.create(email: "joaopaulo@gmail.com", first_name: "João", last_name: "Paulo", city: "Niterói", password: "123456", password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-16.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Service.create(user_id: User.last.id, category: CATEGORIES[0], description:
    "Solar panel instalation!  Labor and parts included.  Price for 340W panel (2mx1m)",
    price: 1690, city: User.last.city)
  Service.create(user_id: User.last.id, category: CATEGORIES[0], description:
    "Solar panel instalation!  Labor and parts included.  Price for 160W panel (1.5mx0.7m)",
    price: 990, city: User.last.city)


User.create(email: "julia@gmail.com", first_name: "Julia", last_name: "Alves", city: "Duque de Caxias", password: "123456", password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-32.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Service.create(user_id: User.last.id, category: CATEGORIES[2], description:
    "Phisioterapy services: arthritis, tendonitis, pulmonary physiotherapy (post-covid), etc. Price per 1 hour session.",
    price: 150, city: User.last.city)

User.create(email: "enzo@gmail.com", first_name: "Enzo", last_name: "Garibaldi", city: "Rio de Janeiro", password: "123456", password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-28.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Service.create(user_id: User.last.id, category: CATEGORIES[1], description:
    "Photography classes in an outdoor environment for begineers.  Price per 1 hour class.",
    price: 200, city: User.last.city)

User.create(email: "rafaellima@hotmail.com", first_name: "Rafael", last_name: "Lima", city: "São Gonçalo", password: "123456", password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-13.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Service.create(user_id: User.last.id, category: CATEGORIES[3], description:
    "Ruby on Rails developer. Let me build your Web App Awesomely.  Price per 1 hour work.",
    price: 250, city: User.last.city)

User.create(email: "lola@hotmail.com", first_name: "Lola", last_name: "Macedo", city: "São João de Meriti", password: "123456", password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-17.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Service.create(user_id: User.last.id, category: CATEGORIES[3], description:
    "Front-end developer:  let me surprise you and make your app that much more much prettier! Price for 1 hour work.",
    price: 250, city: User.last.city)

User.create(email: "sebastiao@bol.com", first_name: "Sebastião", last_name: "Lacerda", city: "Queimados", password: "123456", password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-30.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Service.create(user_id: User.last.id, category: CATEGORIES[0], description:
    "Air conditioners instalation.  Labor and parts inclued.   Price per instalation.",
    price: 350, city: User.last.city)

User.create(email: "carolina@gmail.com", first_name: "Carolina", last_name: "Macedo", city: "Rio de Janeiro", password: "123456", password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-22.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Service.create(user_id: User.last.id, category: CATEGORIES[2], description:
    "Elderly caregiver. I take care of your relative with all the affection and respect. Price per diary of 12hs.",
    price: 600, city: User.last.city)

User.create(email: "afonso@gmail.com", first_name: "Afonso", last_name: "Coelho", city: "Rio de Janeiro", password: "123456", password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-31.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Service.create(user_id: User.last.id, category: CATEGORIES[1], description:
    "Stand comedy classes:  Smile is the best Remedy!  Price for 1 hour class.",
    price: 150, city: User.last.city)

Order.create(user: User.first, service_id: 8, city: User.first.city)
Order.create(user: User.first, service_id: 4, city: User.first.city)

Order.create(user: User.last, service_id: 7, city: User.last.city)


puts "End of Seed!"
