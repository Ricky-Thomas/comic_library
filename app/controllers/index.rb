get '/' do
  erb :index
end

get '/volumes' do
  display_volumes_page 1
end

get '/volumes/:id' do |id|
  num = id.to_i
  display_volumes_page num
end

get '/volumes/:volume_id/issues' do |volume_id|
  display_issues_list volume_id
end

get '/volumes/:volume_id/issues/:id' do |id, volume_id|
  display_issue_page id, volume_id
end

post '/volumes/:volume_id/issues/:id' do |id, volume_id|

end


get '/user/:id' do |id|
  @shelf = IssueShelf.find_by(id: current_user.id)
  @id = id
  erb :user
end

post '/volumes/:volume_id/issues/:id' do |id, volume_id|
  @shelf = IssueShelf.find_by(user_id: current_user.id)
  @issue = API.load_issue id
  @issue = Issue.create(name: @issue.name, deck: @issue.deck, cover_image: @issue.image['thumb_url'], cover_date: @issue.cover_date, user_id: current_user.id)
  IssueShelfIssue.create(user_id: @shelf.user_id, issue_shelf_id: @shelf.id, issue_id: @issue.id)
end
