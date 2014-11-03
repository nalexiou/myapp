class Restaurant < ActiveRecord::Base
	validates :name, :owner_id, presence: true 
	belongs_to :owner
end