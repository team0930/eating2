class Restaurant < ApplicationRecord

	belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :favorites, dependent: :destroy

	belongs_to :area
	belongs_to :genre
	has_many :pictures, dependent: :destroy
  	accepts_attachments_for :pictures, attachment: :image

 #  	with_options presence: true do
	#   validates :name
	#   validates :introduction
	#   validates :phone_number
	#   validates :postal_code
	#   validates :address
	#   validates :area
	#   validates :genre
	#   validates :email
	#   validates :pictures
	# end



	def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end

end
