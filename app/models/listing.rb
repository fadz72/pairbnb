require 'carrierwave/orm/activerecord'

class Listing < ActiveRecord::Base
	belongs_to :user
	has_many :listings_tags, dependent: :destroy
	has_many :tags, through: :listings_tags
	attr_accessor :tags_collection
	# validates :title, uniqueness:{case_sensitive:false}, presence:true 
	#validates :title, presence: true
	mount_uploaders :images, ImagesUploader
end

# def all_tags=(names)
#   self.tags = names.split(",").map do |name|
#       Tag.where(name: name.strip).first_or_create!
#   end
# end

# def all_tags
#   self.tags.map(&:name).join(", ")
# end