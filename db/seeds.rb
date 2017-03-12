# create default test user
User.create!(name: "Coach", email: "coach@fitsapp.com", password: "123456", password_confirmation: "123456", role: "USER")
User.create!(name: "user1", email: "name1@gmail.com", password: "123456", password_confirmation: "123456", role: "USER")
User.create!(name: "trainer1", email: "trainer1@gmail.com", password: "123456", password_confirmation: "123456", role: "TRAINER")
User.create!(name: "trainer2", email: "trainer2@gmail.com", password: "123456", password_confirmation: "123456", role: "TRAINER")
