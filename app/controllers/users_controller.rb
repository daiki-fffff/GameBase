class UsersController < ApplicationController
  def index
  end

  def show 
    @user = User.where(user_id: current_user.id)
  end

  def edit
  end

  def logout
  end

  def destroy
  end

end
