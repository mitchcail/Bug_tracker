class Ticket < ActiveRecord::Base
	belongs_to :user
	has_many :hunts
	has_many :hunters, through: :hunts, source: :user
	has_many :comments
end
