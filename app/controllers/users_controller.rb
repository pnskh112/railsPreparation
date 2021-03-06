class UsersController < ApplicationController
  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to mypage_path
    else
      redirect_back(
        fallback_location: root_path,
        flash: {
          user: user,
          error_message: user.errors.full_messages
        }
      )
      # redirect_to :back, flash: {
      #   user: user,
      #   error_message: user.errors.full_messages
      # }
    end
  end

  def me
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
