class Photo < ActiveRecord::Base
	has_many :orders
	belongs_to :album
end
