# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Business.create!(
    email: "seedbus1@user.com",
    name: "StarBuxks inc",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'


Business.create!(
    email: "seedbus2@user.com",
    name: "Cleanit Carwash",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'


Business.create!(
    email: "seedbus3@user.com",
    name: "Piza Piza Restaurant",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'

Business.create!(
    email: "seedbus4@user.com",
    name: "Mexican Tacos4all",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'



Business.create!(
    email: "seedbus5@user.com",
    name: "Tea and Ham inc",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'


Business.create!(
    email: "seedbus6@user.com",
    name: "Rice and Things",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'


Business.create!(
    email: "seedbus7@user.com",
    name: "Hotel Tizzoc",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'

Business.create!(
    email: "seedbus8@user.com",
    name: "Massage for all",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'

Business.create!(
    email: "seedbus9@user.com",
    name: "Cool Things",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 Business user created'



Org.create!(
    email: "seedorg1@user.com",
    name: "Gustavo Valenzuela",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 org user created'

Org.create!(
    email: "seedorg2@user.com",
    name: "John Smith",
    password: "user12",
    password_confirmation: "user12",
    )

puts '1 org user created'



Org.create!(
    email: "seedorg3@user.com",
    name: "Lucas George",
    password: "user12",
    password_confirmation: "user12",
    
    )

puts '1 org user created'




Event.create!(
    name: "Test Event 1",
    date: "12/23/19",
    about: "this is just a test to test seeding ",
    address: "123 Main ave. Torrance Ca.",
    business_id: Business.last.id,
    org_id: Org.last.id,
    )

puts '1 Event Created'


Event.create!(
    name: "Test Event 2",
    date: "12/25/18",
    about: "this is just a test to test seeding ",
    address: "123 Main ave. Torrance Ca.",
    business_id: Business.first.id,
    org_id: Org.first.id,
    )

puts '1 Event Created'


EventPage.create!(
    address: "Test Event 2",
    date_start: "12/25/18",
    date_end: "this is just a test to test seeding ",
    about: "this is just a test to test seeding ",
    date_end: "this is just a test to test seeding ",
    short_desc: "this is just a test to test seeding ",
    event_id: Event.first.id,
    business_id: Business.first.id,
    org_id: Org.first.id,
    )

puts '1 Event Page Created'







# 3.times do |idea_theme|
#     IdeaTheme.create!(
#         user_id: User.last.id,
#         idea: 'Idea Theme To write about'
#         )
# end



# puts '3 idea themes created'
