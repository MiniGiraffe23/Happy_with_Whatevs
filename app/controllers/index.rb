get '/' do
  redirect '/decks'
end

get '/login' do
  @user = User.new
  erb :'/login'
end

post '/login' do
  p params
  @user = User.authenticate(params[:user])
  p params
  if @user
    session[:user_id] = @user.id
    redirect '/decks'
  else
    redirect '/login'
  end


end
