class Hunt < ActiveRecord::Base
	belongs_to :User
	belongs_to :Ticket
end
