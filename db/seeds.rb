require 'faker'

puts 'Creating 200 fake colaborators...'

200.times do |i|
  Colaborator.create(name: Faker::Name.name, email: Faker::Internet.email, direction: Faker::Address.street_address)
end