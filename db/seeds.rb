30.times {
  User.create(username: Faker::Internet.email, password: Faker::Internet.password)
  Volume.create(name: Faker::Lorem.sentence, image: Faker::Internet.url, user_id: rand(1..30))
  Issue.create(name: Faker::Lorem.sentence, image: Faker::Internet.url, user_id: rand(1..30))
}

30.times {
  VolumeShelve.create(user_id: rand(1..30), volume_id: rand(1..30), comment: Faker::Lorem.paragraph)
  IssueShelve.create(user_id: rand(1..30), issue_id: rand(1..30), comment: Faker::Lorem.paragraph)
}
