require 'carrierwave/orm/activerecord'

class Listing < ActiveRecord::Base
	belongs_to :user
	has_many :tags
	# validates :title, uniqueness:{case_sensitive:false}, presence:true 
	#validates :title, presence: true
	mount_uploaders :images, ImagesUploader
end