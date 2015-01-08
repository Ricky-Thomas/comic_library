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

post '/volumes/:volume_id/issues/:id' do |volume_id, id|
  @issue = API.load_issue id
  @loaded_issue = Issue.create(name: 'carl')
  @shelf = IssueShelf.create(issue: @loaded_issue, user: current_user)
end


get '/user/:id' do |id|
  @shelf = IssueShelf.find_by(id: current_user.id)
  @id = id
  erb :user
end

