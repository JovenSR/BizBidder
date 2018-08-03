class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def accept_email(proposalid)
   proposal = Proposal.find(:id => proposalid)
   sp = ServiceProvider.find(:id => proposal.service_provider_id)
   @user = User.find(:id => sp.user_id)
   mail(to: @user.email, subject: 'Proposal Accepted')
 end
end
