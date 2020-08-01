class AddUserIdToImpressions < ActiveRecord::Migration[6.0]
  def change
    #投稿に対して投稿したユーザーを紐付ける
    add_column :impressions, :user_id, :integer
  end
end
