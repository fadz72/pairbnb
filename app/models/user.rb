require 'carrierwave/orm/activerecord'


class User < ActiveRecord::Base
  include Clearance::User
  	attr_accessor :image
   has_many :listings, dependent: :destroy
   mount_uploader :image, AvatarUploader

   def resize_100
   	image = MiniMagick::Image.open(self.image.current_path)
	image.resize "100x100"
	image.write "avatar.png"
   end

end
