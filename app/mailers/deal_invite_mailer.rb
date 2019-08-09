class DealInviteMailer < ApplicationMailer
  default :from => 'any_from_address@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_deal_email(org)
    @org = org
    mail( :to => @org.email,
    :subject => 'Deal Page Email' )
  end
end
