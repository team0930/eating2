class Area < ApplicationRecord
	has_many :restaurants, dependent: :destroy
end
