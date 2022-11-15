class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url  = 'new_session_url'
    mail(to: user.username, subject: 'Welcome to My 99 Cats!', from: '99catsadmin@appacademy.io')
  end

end
