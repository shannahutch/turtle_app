# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Thing.find_or_create_by(name: 'Widget: ') do |thing|
#   thing.description = 'A small usefull thing!'
# end

# Thing.find_or_create_by(name: 'Thingamabob: ') do |thing|
#   thing.description = ' A tool with an obscure usage!'
# end

# Thing.find_or_create_by(name: 'Doohicky: ') do |thing|
#   thing.description = ' A useless but fun gizmo!'
# end

# qwe = User.find_or_create_by(email: 'qwe@qwe.com', password: '123123123', password_conformation: '123123123') 
user = User.first 


if Thing.all.count < 205
    200.times do
  user.Thing.create(name: Forgery(:lorem_ipsum).words(2, :random => true), description: Forgery(:lorem_ipsum).words(3, :random => true))

  end
end


