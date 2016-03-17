class ProfilesController < ApplicationController
	def show
		#create a route /user/:id/profile

		#get the user id from the parameter passsed into the URL 
		# eg for /user/3/profile
		# get this from params[:id]


		@user = User.find(params[:id])


		#find the User with an id of 3 then display their information
	end 
end 
