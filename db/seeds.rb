
AdminUser.destroy_all
Complaint.destroy_all
Enterprise.destroy_all
User.destroy_all

users = []
enterprises = []

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

20.times do
	enterprises << Enterprise.create!(name: Faker::Company.name)
end

30.times do
	users << User.create!(email: Faker::Internet.email, password: '123456')
end

250.times do
	Complaint.create!(content: Faker::Lorem.sentence, user: users.sample,created_at: Time.now + rand(1..30).day, enterprise: enterprises.sample)
end