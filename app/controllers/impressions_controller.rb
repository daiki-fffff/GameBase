class ImpressionsController < ApplicationController

  def index
    if params[:user_id]
      @user = User.find_by(params[:user_id])
      @impressiions = @user.impressions
    else
      # 投稿データすべてを取得、またインスタンス変数なのでViewで参照可能
      @impressions = Impression.all
    end
  end

  def show
    @impression = Impression.find(params[:id])
    @user = User.find(@impression.user_id)
  end

  def new 
    if user_signed_in?
      @impression = Impression.new
    else
      redirect_to new_user_session_path
    end
    @post = current_user.impressions.build
  end

  def create
    @impression = Impression.new(impression_params)
    @impression.save
    if @impression.save
      redirect_to root_url, notice: "投稿しました"
    end
  end

  def edit
    @impression = Impression.find(params[:id])
  end

  def update
    @impression = Impression.find(params[:id])
    @impression.update(params.require(:impression).permit(:title, :text))
    redirect_to root_path, notice: "編集しました"
  end

  def destroy
    impression = Impression.find(params[:id])
      if impression.user_id == current_user.id
        impression.destroy
      redirect_to root_url, notice: "削除しました"
    else
      redirect_to root_url, notice: "削除できませんでした"
    end
  end

  private
  def impression_params
    params.require(:impression).permit(:title, :text).merge(user_id: current_user.id)
  end

end
