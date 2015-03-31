namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@tododoo.ua",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin:true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@tododoo.ua"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    users = User.all.limit(3)
    50.times do |n|
      title = Faker::Lorem.sentence(1)
      description = Faker::Lorem.sentence(5)
      deadline = n.days.from_now
      priority = 1
      is_done = false
      users.each { |user| user.projects.create!(title: title,
                                                description: description,
                                                deadline: deadline,
                                                priority: priority,
                                                is_done: is_done) }
    end
  end
end