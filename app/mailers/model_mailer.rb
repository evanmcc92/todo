class ModelMailer < ActionMailer::Base
  default from: "Evan McCullough <webmaster@evanamccullough.com>",
          return_path: 'webmaster@evanamccullough.com',
          sender: 'webmaster@evanamccullough.com'

  
  def task_due(task)
    @task = task
    @user = task.user

    mail to: @user.email, subject: task.title + " is Due!"
  end

  def task_reminder(task)
    @task = task
    @user = task.user

    mail to: @user.email, subject: task.title + " Reminder"
   end
end
