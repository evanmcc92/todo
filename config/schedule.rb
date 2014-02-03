every 1.minute do
  runner "Task.check_due", :output => 'log/cron.log'
  runner "Task.check_reminder", :output => 'log/cron.log'
end 