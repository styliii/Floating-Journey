class ReminderMailer < ActionMailer::Base
  default from: "floatingjourney@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reminder_mailer.reminder_email.subject
  #
  def reminder_email(user)
    @user = user
    
    mail to: user.email, subject: "Checking in"
  end
end
