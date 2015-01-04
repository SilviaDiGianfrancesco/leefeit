class Cosmetic < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	has_many :reviews
end
