class UsersController < ApplicationController
  def index
  end

  def show 
    #@user = User.where(user_id: current_user.id)
    @nickname = current_user.nickname
    @impressions = current_user.impressions
  end

  def edit
  end

  def logout
  end

  def destroy
  end

end
