class SessionController < ApplicationController
	def create
		auth = request.env['omniauth.auth']
		user = User.find_or_initialize_by(email: auth.info.email)
		user.password = "string"
		user.save!
		sign_in(user)
		redirect_to '/home/index'
	end

end