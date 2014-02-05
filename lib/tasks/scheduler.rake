namespace :scheduler do

	desc "Check for reminders"
	task :check_reminder => :environment do
		Task.check_reminder
	end

	desc "Check for due date"
	task :check_due => :environment do
		Task.check_due
	end
end