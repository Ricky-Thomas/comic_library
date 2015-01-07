30.times {
  User.create(username: Faker::Internet.email, password: Faker::Internet.password)
  Volume.create(name: Faker::Lorem.sentence, image: Faker::Internet.url, user_id: rand(1..30))
  Issue.create(name: Faker::Lorem.sentence, cover_image: Faker::Internet.url, user_id: rand(1..30))
  VolumeShelf.create(user_id: rand(1..30), volume_shelf_volume_id: rand(1..30))
  IssueShelf.create(user_id: rand(1..30), issue_shelf_issue_id: rand(1..30))
  VolumeShelfComment.create(user_id: rand(1..30), volume_shelf_id: 1, comment: Faker::Lorem.paragraph)
  IssueShelfComment.create(user_id: rand(1..30), issue_shelf_id: 1, comment: Faker::Lorem.paragraph)
  VolumeShelfVolume.create(volume_shelf_id: 1, volume_id: rand(1..30))
  IssueShelfIssue.create(issue_shelf_id: 1, issue_id: rand(1..30))
}
