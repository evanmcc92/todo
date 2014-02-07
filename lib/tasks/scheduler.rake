namespace :scheduler do
  desc "check reminder time"
  task check_reminder: :environment do
  	Task.check_reminder
  end

  desc "check due date/time"
  task check_due: :environment do
  	Task.check_due
  end

end
