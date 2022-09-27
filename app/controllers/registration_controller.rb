class RegistrationController < ApplicationController
# we call the user with the @ so it can be accessible in both views and controllers
 def new
  @user = User.new
 end
end
