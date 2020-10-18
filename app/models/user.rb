class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  # 携帯電話の正規表現をバリデーションにかけています（携帯電話の番号のみ使用することを前提）
  VALID_PHONE_NUMBER = /\A0[5789]0[-]?\d{4}[-]?\d{4}\z/
  validates :phone_number, presence: true, format: { with: VALID_PHONE_NUMBER }

  has_many :restaurants, dependent: :destroy

  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy


  def active_for_authentication?
    super && (self.is_deleted == false)
  end
end
