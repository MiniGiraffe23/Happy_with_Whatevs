helpers do
  def current_user #finds user by session id if session exists
    @current_user ||= User.find_by(id: session[:user_id]) #find by will return nil if nothing found, find alone will throw an error
  end

  def logged_in?
    session[:user_id] != nil # returns true if value is not nil
  end

  def deck # method to create session with deck
    session[:deck]
  end

  def start_deck # method to start round with deck selected
    session[:deck] = @round.deck_id
  end
end