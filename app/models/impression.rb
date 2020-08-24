class Impression < ApplicationRecord
  # textの文字数は、1文字から1000文字まで
  validates :text,length: { minimum: 1, maximum: 1000 }
  belongs_to :user

  def user
    #インスタンスメソッド内で、selfはインスタンス自身を表す
    return User.find_by(id: self.user_id)
  end

end
