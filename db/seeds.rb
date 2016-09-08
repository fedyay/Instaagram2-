User.create(name: Faker::Internet.user_name, email: '123456@example.com', password: '123456', password_confirmation: '123456')
User.create(name: Faker::Internet.user_name, email: '123123@example.com', password: '123123', password_confirmation: '123123')
User.create(name: Faker::Internet.user_name, email: 'asdasd@example.com', password: 'asdasd', password_confirmation: 'asdasd')

Image.create(description: Faker::Lorem.sentence, user_id: 1, photo: Faker::Avatar.image)
Image.create(description: Faker::Lorem.sentence, user_id: 1, photo: Faker::Avatar.image)
Image.create(description: Faker::Lorem.sentence, user_id: 1, photo: Faker::Avatar.image)

Image.create(description: Faker::Lorem.sentence, user_id: 2, photo: Faker::Avatar.image)
Image.create(description: Faker::Lorem.sentence, user_id: 2, photo: Faker::Avatar.image)
Image.create(description: Faker::Lorem.sentence, user_id: 2, photo: Faker::Avatar.image)

Image.create(description: Faker::Lorem.sentence, user_id: 3, photo: Faker::Avatar.image)
Image.create(description: Faker::Lorem.sentence, user_id: 3, photo: Faker::Avatar.image)