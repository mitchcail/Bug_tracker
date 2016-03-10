class HuntsController < ApplicationController
	
	def subscribe 

		@hunt = Hunt.new(user_id: current_user.id, ticket_id: params[:ticket_id])
		@hunt.save
		redirect_to tickets_url
	end 
end
