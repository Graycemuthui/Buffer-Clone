class RegistrationController < ApplicationController
  # we call the user with the @ so it can be accessible in both views and controllers
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'You have successfully signed up!'
    else
      render :new
      end
    end

    private
# permit specific inputs from the user
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end

