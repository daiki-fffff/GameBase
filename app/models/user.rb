class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true

  has_many :impressions

  def impressions
    #インスタンスメソッド内で、selfはインスタンス自身を表す
    return Impression.where(user_id: self.id)
  end

end
