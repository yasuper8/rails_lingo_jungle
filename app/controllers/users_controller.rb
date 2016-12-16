class UsersController < ApplicationController

  def index
    @users = User.all
    render :index # optional
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
       if user.save
         session[:user_id] = user.id
         redirect_to '/'
       else
         redirect_to '/signup'
       end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :favorite_animal, :native_lang, :learn_lang, :password, :password_confirmation)
  end


end
