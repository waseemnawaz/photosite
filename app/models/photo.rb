class Photo < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	has_many :orders
	belongs_to :album

	validates_processing_of :avatar
	validate :avatar_size_validation
 
	private
  	def image_size_validation
    	errors[:avatar] << "should be less than 500KB" if avatar.size > 3.megabytes
  	end
end
