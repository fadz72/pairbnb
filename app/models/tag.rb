class Tag < ActiveRecord::Base
	has_many :listings_tags, dependent: :destroy
	has_many :listings, through: :listings_tags

end
