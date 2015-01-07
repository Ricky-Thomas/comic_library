get '/' do
  erb :index
end

get '/volumes' do
  display_page 1
end

get '/volumes/:id' do |id|
  num = id.to_i
  display_page num
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
