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




# get '/issues' do |id|
# end

# get '/issues/:id' do |id|
# end

# get '/volume_shelf/:user_id' do |user_id|
# end

# get '/issue_shelf/:user_id' do |user_id|
# end
