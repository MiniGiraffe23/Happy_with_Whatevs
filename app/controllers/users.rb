get '/users/new' do
  erb :'users/new'
end

post '/users/index' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/decks'
  else
    @errors = @user.errors.full_messages
    redirect '/users/new'
  end
end

get '/users/:id' do

  @user = User.find_by(session[:id])
  erb :'/users/show'
end
