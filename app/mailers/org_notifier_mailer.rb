class OrgNotifierMailer < ApplicationMailer
	default :from => 'gustavovalenzuela1180@gmail.com'
	# send a signup email to the user, pass in the user object that   contains the user's email address
  	def send_signup_email(org)
	    @org = org
	    mail( :to => @org.email,
	    :subject => 'Thanks for signing up for our amazing app' )
  	end
end

