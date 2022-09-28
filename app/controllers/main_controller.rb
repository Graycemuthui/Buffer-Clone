class MainController < ApplicationController
  def index
    # look for a user with the id in the session
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
