class ModelMailer < ActionMailer::Base
  default from: "Evan McCullough <webmaster@evanamccullough.com>",
          return_path: 'webmaster@evanamccullough.com',
          sender: 'webmaster@evanamccullough.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  
  def task_reminder(task)
    @task = task

    mail to: task.email, subject: task.title + " is Due!"
  end

  def task_reminder(task)
    @task = task

    mail to: task.email, subject: task.title + " Reminder"
   end
end
