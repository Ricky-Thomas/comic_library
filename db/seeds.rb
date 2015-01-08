30.times {
  User.create(username: Faker::Internet.email, password: Faker::Internet.password)
  Issue.create(name: Faker::Lorem.sentence, cover_image: Faker::Internet.url)
  IssueShelf.create(user_id: 1, issue_id: 1)
  IssueShelfComment.create(user_id: rand(1..30), issue_shelf_id: 1, comment: Faker::Lorem.paragraph)
}
