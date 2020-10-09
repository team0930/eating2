class Restaurant < ApplicationRecord
	has_many :menus, dependent: :destroy
end
