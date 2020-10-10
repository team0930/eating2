class Genre < ApplicationRecord
	has_many :restaurants, dependent: :destroy
end
