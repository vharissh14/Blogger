class EmailController < ApplicationController
	def mail
		@user = Newslet.new 
		@user.email=params[:email]
		@user.save
		flash.notice = "Your have subscibed to receive E-Mail"
		redirect_to root_url
	end
end
