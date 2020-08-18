require "Faker"

5.times do
    user = User.create!(email: Faker::Internet.email,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                password: '123456')
end