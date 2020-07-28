class ImpressionsController < ApplicationController
  def index
    @impressions = Impression.all
  end

  def show
    @impression = Impression.find(params[:id])
  end

  def new 
    if user_signed_in?
      @impression = Impression.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @impression = Impression.new(impression_params)
    @impression.save
    if @impression.save
      redirect_to root_url
    end
  end

  def edit
  end

  def update
    if @impression.update(impression_params)
      redirect_to root_path
    end
  end

  def destroy
    if @impression.user_id == current_user.id && @impression.destroy
      flash[:notice] = "削除が完了しました。"
      redirect_to root_url
    else
      flash[:alert] = "削除できませんでした。"
      redirect_to root_url
    end
  end

end
