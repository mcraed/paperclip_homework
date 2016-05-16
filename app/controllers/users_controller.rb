class UsersController < ApplicationController
  def new
    @user = User.new


  end

  def create
    @user = User.new(user_params)
    
    if params[:name] != ""
      @user.save

      redirect_to users_path
    else
      render "new"
    end
  end

  def index
    @users = User.all

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:name, :age, :email, :bio, :avatar)
    end
end
