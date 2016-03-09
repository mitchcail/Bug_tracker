class Ticket < ActiveRecord::Base
	belongs_to :user
	has_many :hunts
	has_many :hunters, through: :hunts, source: :user
end
