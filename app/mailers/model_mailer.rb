class ModelMailer < ActionMailer::Base
  default from: "Evan McCullough <webmaster@evanamccullough.com>"

  
  def task_due(task)
    @task = task
    @user = @task.user

    mail to: @user.email, subject: @task.title + " is Due!"
  end

  def task_reminder(task)
    @task = task
    @user = @task.user

    mail to: @user.email, subject: @task.title + " Reminder"
  end

  def new_task(task)
    @task = task
    mail(:to => @task.user.email, :subject => @task.title + " Is Registered")
  end
end
