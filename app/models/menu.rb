class Menu < ApplicationRecord
	belongs_to :restaurant

	enum category:{
    	"---":            0,
    	"コース":          1,
    	"単品料理":        2,
    	"ドリンク":        3,
    	"デザート":        4,
    	"その他":          5,
  }

end
