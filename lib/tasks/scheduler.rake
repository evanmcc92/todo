namespace :scheduler do
  desc "check reminder date/time"
  task check_reminder: :environment do
    current_date = Time.now.strftime("%d/%m/%Y %H:%M").to_s
    where(Task.reminder => current_date).each do |task|
      ModelMailer.task_reminder(task).deliver
  	end
  end

  desc "check due date/time"
  task check_due: :environment do
    current_date = Time.now.strftime("%d/%m/%Y %H:%M").to_s
    where(Task.due => current_date).each do |task|
      ModelMailer.task_due(task).deliver 
  	end
  end

end
