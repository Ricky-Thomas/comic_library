post '/login' do
  user = User.find_by(email: params[:user][:email])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect("/")
  else
    set_error('login failed.')
    redirect('/login')
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect('/')
end

get '/signup' do
  redirect '/'
end

post '/signup' do
  new_user = User.new(params[:user])

  if new_user.valid? && params[:user][:password] == params[:password_confirm]
    new_user.save
    session[:user_id] = new_user.id
    redirect("/")
  else
    set_error('signup failed.')
    redirect('/')
  end
end
