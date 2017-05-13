helpers do
  def current_user #finds user by session id if session exists
    @current_user ||= User.find_by(id: session[:user_id]) #find by will return nil if nothing found, find alone will throw an error
  end

  def logged_in?
    session[:user_id] != nil # returns true if value is not nil
  end
end