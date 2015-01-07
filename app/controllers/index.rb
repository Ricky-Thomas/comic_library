get '/' do
  erb :index
end

get '/volumes' do
  @volumes = API.get_volumes
  erb :volume_list
end

# get '/volumes/:id' do |id|
# end

# get '/issues' do |id|
# end

# get '/issues/:id' do |id|
# end

# get '/volume_shelf/:user_id' do |user_id|
# end

# get '/issue_shelf/:user_id' do |user_id|
# end
