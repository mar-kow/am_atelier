class UserMailer < ActionMailer::Base
  default from: 'warsztaty@infakt.pl'
  layout 'mailer'

  def confirm_email(user)
    @user = user
  end

  def unsubscribe
  end
end