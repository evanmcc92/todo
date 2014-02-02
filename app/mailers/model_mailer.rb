class ModelMailer < ActionMailer::Base
  default from: "webmaster@evanamccullough.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  
  def task_due(user)
    mail(to: "#{user.email}", subject: "Something is due!")
  end

  def task_reminder(user)
    mail(to: "#{user.email}", subject: "Reminder") 
   end
end
