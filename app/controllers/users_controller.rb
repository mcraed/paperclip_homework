class UsersController < ApplicationController
  def new
  end

  def create
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
end
